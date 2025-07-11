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
	| parcel |
	parcel := FamixVWParcelDefinition on: aFileReference.
	1halt.
	self flag: #todo. "Finish."
]
