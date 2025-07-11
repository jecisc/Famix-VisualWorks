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

{ #category : 'running' }
FamixVWParcelImporter >> runOn: aFileReference excluding: aCollection [

	| parcel parcels |
	parcel := FamixVWParcelDefinition on: aFileReference.
	parcels := parcel withAllRelatedParcelsExcluding: aCollection.
	1 halt.
	self flag: #todo "Finish."
]
