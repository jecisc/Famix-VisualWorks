"
I hold the list of VisualWorks parcels that come with the regular install.

- 'rootFolder' is a FileReference for the VisualWorks install folder
- 'parcels' is a Dictionary of `FamixVWParcelDefinition` objects representing the VisualWorks parcels (key is the parcel file name without the 'pst' extension)

Typically the parcel file name (without extension) and the parcel name are the same.
When the parcel name contains spaces, the file name does not.

For instance:	
	For parcel named: 'AT Integer Extensions', the file is 'ATIntegerExtensions.pst'

"
Class {
	#name : 'FamixVWBasicParcels',
	#superclass : 'Object',
	#instVars : [
		'rootFolder',
		'parcels'
	],
	#category : 'Famix-VisualWorks-Importers',
	#package : 'Famix-VisualWorks-Importers'
}

{ #category : 'instance creation' }
FamixVWBasicParcels class >> root: aFile [
	"The root folder is typicall the main VisualWorks root folder i.e.  (( VWBasicParcels root:'/Users/john/vw8.1' )) "

	^ self new
		  rootFolder: aFile;
		  yourself
]

{ #category : 'private' }
FamixVWBasicParcels >> computeParcels [

	^ self computeParcelsFrom: rootFolder
]

{ #category : 'private' }
FamixVWBasicParcels >> computeParcelsFrom: aFolder [
	"Answer a Dictionary of the parcels found in the folder argument
	This code is recursive so that all nested folders are visited"

	| result |
	result := Dictionary new.
	(aFolder filesMatching: '*.pst') do: [ :file | result at: file base put: (FamixVWParcelDefinition file: file) ].
	(aFolder directories select: #isDirectory) do: [ :folder | result addAll: (self computeParcelsFrom: folder) ].
	^ result
]

{ #category : 'api' }
FamixVWBasicParcels >> findParcelNamed: parcelName parent: aParcelDefinition [

	| parcel |
	parcel := self parcels at: (parcelName copyWithout: Character space) ifAbsent: [ "Not found
			We could also parse all the parcels to extract their names
			and check the parcel names"
		          ^ nil ].
	"Sending #name will trigger the parsing as necessary
	so that we can confirm the parcel name"
	parcel parent: aParcelDefinition.
	parcel name = parcelName ifFalse: [
			self error: 'parcel name mismatch'.
			^ nil ].
	^ parcel
]

{ #category : 'accessing' }
FamixVWBasicParcels >> parcels [

	^ parcels ifNil: [ parcels := self computeParcels ]
]

{ #category : 'accessing' }
FamixVWBasicParcels >> rootFolder: aFolder [
	rootFolder := aFolder
]
