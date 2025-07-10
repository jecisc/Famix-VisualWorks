Class {
	#name : 'FamixVWModel',
	#superclass : 'MooseModel',
	#traits : 'FamixVWTEntityCreator',
	#classTraits : 'FamixVWTEntityCreator classTrait',
	#category : 'Famix-VisualWorks-Entities-Model',
	#package : 'Famix-VisualWorks-Entities',
	#tag : 'Model'
}

{ #category : 'accessing' }
FamixVWModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits')
]

{ #category : 'meta' }
FamixVWModel class >> annotation [
	<FMClass: #FamixVWModel super: #MooseModel>
	<package: #'Famix-VisualWorks-Entities'>
	<generated>
]

{ #category : 'testing' }
FamixVWModel class >> canBeImportedFromFile [
	<generated>
	^true
]

{ #category : 'accessing' }
FamixVWModel class >> importingContextClass [

	<generated>
	^ FamixVWImportingContext
]
