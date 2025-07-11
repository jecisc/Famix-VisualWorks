"
I am a Moose importer for VW parcels.

I can be used using `#runOn:` providing the `FileReference` of the root pancel. For example Seaside-All.pst.

We can also specify a list of parcel names we want to exclude from the analysis. 

Example:

```st
self runOn: 'sources/seaside/Seaside-All.pst' asFileReference excluding: #('JQuery-Namespace')
```
"
Class {
	#name : 'FamixVWParcelImporter',
	#superclass : 'Object',
	#instVars : [
		'source',
		'mooseModel'
	],
	#category : 'Famix-VisualWorks-Importers',
	#package : 'Famix-VisualWorks-Importers'
}

{ #category : 'private' }
FamixVWParcelImporter class >> importSeasideCyril [
	"For development purpose"
	<script>
	self runOn: '/Users/cyril/Documents/VWImporter/ProjectVW/2018-03-14T14_51_00+01_00/sources/seaside/Seaside-All.pst' asFileReference
]

{ #category : 'running' }
FamixVWParcelImporter class >> runOn: aFile [

	^ self runOn: aFile excluding: #(  )
]

{ #category : 'running' }
FamixVWParcelImporter class >> runOn: aFile excluding: aCollection [
	"I should take the root parcel file of an application as parameter (like Seaside-All-pst) and I can exclude some parcels by providing their names in the second parameter."
	^ self new runOn: aFile excluding: #(  )
]

{ #category : 'private' }
FamixVWParcelImporter >> handleNode: aNode [

	| selector |
	selector := ('visit' , (aNode name copy replaceAll: $- with: $_) capitalized , ':') asSymbol.
	^ self perform: selector with: aNode
]

{ #category : 'initialization' }
FamixVWParcelImporter >> initialize [

	super initialize.
	mooseModel := FamixVWModel new
		              sourceLanguage: FamixVWSourceLanguage new;
		              yourself
]

{ #category : 'parsing' }
FamixVWParcelImporter >> parseFile: file [

	| ast |
	source ifNil: [ source := file ].
	file readStreamDo: [ :aStream | ast := XMLDOMParser parse: aStream contents ]. "first pass, define classes packages, methods"
	self parseSyntaxTree: ast.
	source := nil
]

{ #category : 'running' }
FamixVWParcelImporter >> parseParcels: aCollection [
	"first pass, define classes packages, methods"

	aCollection
		do: [ :aParcel |
				source := aParcel.
				self parseFile: aParcel file ]
		displayingProgress: [ :each | 'Parsing parcel ' , each name ].
	source := nil.

	"second pass, parse inside methods to create associations"
	self importRefsWithProgress.
	^ mooseModel
]

{ #category : 'parsing' }
FamixVWParcelImporter >> parseSyntaxTree: ast [
	"First pass, define classes packages, methods"

	ast accept: self
]

{ #category : 'running' }
FamixVWParcelImporter >> runOn: aFileReference excluding: aCollection [

	| parcel |
	parcel := FamixVWParcelDefinition on: aFileReference.
	self parseParcels: (parcel withAllRelatedParcelsExcluding: aCollection).
	1 halt.
	self flag: #todo "Finish."
]

{ #category : 'visiting' }
FamixVWParcelImporter >> visitSt_source: aNode [

	aNode childrenAccept: self
]
