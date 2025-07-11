"
I am a VisualWorks parcel definition

- 'name' is a String and holds the name of the represented parcel
- 'file' is a FileReference and tells us what file has the parcel source code, extension 'pst'
- 'prerequisites' is an OrderedCollection of `FamixVWParcelDefinition` objects that I depend on
- 'parent' is an instance of  `FamixVWParcelDefinition`, that is dependant on me
- 'root' is a FileReference to the VisualWorks install folder
- 'parcelRoot' is an instance of `FamixVWBasicParcels` that will help us find the files of the prerequisites

The parcel name can be known exactly only after it has been parsed.
A parcel cannot be parsed until its file name is known or guessed.
"
Class {
	#name : 'FamixVWParcelDefinition',
	#superclass : 'Object',
	#instVars : [
		'name',
		'file',
		'prerequisites',
		'parent',
		'parcelRoot',
		'root',
		'isParsed'
	],
	#category : 'Famix-VisualWorks-Importers',
	#package : 'Famix-VisualWorks-Importers'
}

{ #category : 'instance creation' }
FamixVWParcelDefinition class >> file: aFileReference [
	"This one does not launch the parse until we need it."

	^ self new
		  file: aFileReference;
		  yourself
]

{ #category : 'instance creation' }
FamixVWParcelDefinition class >> on: aFileReference [

	^ (self file: aFileReference)
		  ensureParsed;
		  yourself
]

{ #category : 'private' }
FamixVWParcelDefinition >> computedGuessedRoot [

	| here maxDepth |
	maxDepth := 5.
	
	"Lookup the file system structure until we find a folder named 'parcels' "
	here := file parent parent.
	[
		(maxDepth := maxDepth - 1) = 0 ifTrue: [ ^ nil ].
		(here entries collect: #asFileReference) anySatisfy: [ :each | self topFolders includes: each base ] ] whileFalse: [ here := here parent ].
	^ here
]

{ #category : 'private' }
FamixVWParcelDefinition >> ensureParsed [
	"Some informations need to ensure the parcel was parsed to be accessed."

	| prerequisiteSpec |
	isParsed ifTrue: [ ^ self ].

	self flag: #todo. "I do not like this check. We should raise an error IMO. To check later in the development."
	file ifNil: [ ^ self ].

	file readStreamDo: [ :aStream |
			aStream upToAll: 'Name: '.
			self name: (aStream upTo: Character cr) trim.
			aStream upToAll: 'DevelopmentPrerequisites: '.
			self flag: #todo. "Check if we can avoid this and use `Array readFrom:` instead."
			prerequisiteSpec := self class compiler evaluate: (aStream upTo: Character cr) ].

	self flag: #todo. "Check if this can be nil or if it's an extra guard."
	prerequisites := prerequisiteSpec
		                 ifNil: [ #(  ) ]
		                 ifNotNil: [
				                 self flag: #todo. "Check if we can have nils."
				                 (prerequisiteSpec collect: [ :array | self parcelRoot findParcelNamed: array second parent: self ]) reject: #isNil ].

	isParsed := true
]

{ #category : 'accessing' }
FamixVWParcelDefinition >> file: aFile [
	file := aFile
]

{ #category : 'private' }
FamixVWParcelDefinition >> guessParcelRoot [

	self root: self computedGuessedRoot.
	^ parcelRoot
]

{ #category : 'initialization' }
FamixVWParcelDefinition >> initialize [

	super initialize.
	prerequisites := OrderedCollection new.
	isParsed := false
]

{ #category : 'accessing' }
FamixVWParcelDefinition >> name [
	self ensureParsed.
	^ name
]

{ #category : 'accessing' }
FamixVWParcelDefinition >> name: anObject [
	name := anObject
]

{ #category : 'accessing' }
FamixVWParcelDefinition >> parcelRoot [

	^ parcelRoot ifNil: [
			  self parent
				  ifNil: [ self guessParcelRoot ]
				  ifNotNil: [ self parent parcelRoot ] ]
]

{ #category : 'accessing' }
FamixVWParcelDefinition >> parent [
	^ parent
]

{ #category : 'accessing' }
FamixVWParcelDefinition >> parent: anObject [
	parent := anObject
]

{ #category : 'printing' }
FamixVWParcelDefinition >> printOn: aStream [

	aStream nextPutAll: 'Parcel '.
	name
		ifNil: [
				aStream
					nextPutAll: 'on ';
					nextPutAll: file printString ]
		ifNotNil: [
				aStream
					nextPutAll: 'named ';
					nextPutAll: name ]
]

{ #category : 'accessing' }
FamixVWParcelDefinition >> root: aFile [

	root := aFile.
	parcelRoot := FamixVWBasicParcels root: root
]

{ #category : 'private' }
FamixVWParcelDefinition >> topFolders [
	"Answer the list of subfolders that are expected in the VisualWorks root folder"

	^ #( 'parcels' )
]
