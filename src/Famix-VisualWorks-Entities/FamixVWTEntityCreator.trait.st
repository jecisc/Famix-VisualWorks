"
This trait is used by Famix models.
It provides an API for creating entities and adding them to the model.


"
Trait {
	#name : 'FamixVWTEntityCreator',
	#category : 'Famix-VisualWorks-Entities-Model',
	#package : 'Famix-VisualWorks-Entities',
	#tag : 'Model'
}

{ #category : 'meta' }
FamixVWTEntityCreator classSide >> annotation [

	<FMClass: #TEntityCreator super: #Object>
	<package: #'Famix-VisualWorks-Entities'>
	<generated>
	^ self
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newAccess [

	<generated>
	^ self add: FamixVWAccess new
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newAttribute [

	<generated>
	^ self add: FamixVWAttribute new
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newAttributeNamed: aName [

	<generated>
	^ self add: (FamixVWAttribute named: aName)
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newClass [

	<generated>
	^ self add: FamixVWClass new
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newClassNamed: aName [

	<generated>
	^ self add: (FamixVWClass named: aName)
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newComment [

	<generated>
	^ self add: FamixVWComment new
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newGlobalVariable [

	<generated>
	^ self add: FamixVWGlobalVariable new
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newGlobalVariableNamed: aName [

	<generated>
	^ self add: (FamixVWGlobalVariable named: aName)
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newImplicitVariable [

	<generated>
	^ self add: FamixVWImplicitVariable new
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newImplicitVariableNamed: aName [

	<generated>
	^ self add: (FamixVWImplicitVariable named: aName)
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newInheritance [

	<generated>
	^ self add: FamixVWInheritance new
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newInvocation [

	<generated>
	^ self add: FamixVWInvocation new
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newLocalVariable [

	<generated>
	^ self add: FamixVWLocalVariable new
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newLocalVariableNamed: aName [

	<generated>
	^ self add: (FamixVWLocalVariable named: aName)
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newMethod [

	<generated>
	^ self add: FamixVWMethod new
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newMethodNamed: aName [

	<generated>
	^ self add: (FamixVWMethod named: aName)
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newNamespace [

	<generated>
	^ self add: FamixVWNamespace new
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newNamespaceNamed: aName [

	<generated>
	^ self add: (FamixVWNamespace named: aName)
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newPackage [

	<generated>
	^ self add: FamixVWPackage new
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newPackageNamed: aName [

	<generated>
	^ self add: (FamixVWPackage named: aName)
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newParameter [

	<generated>
	^ self add: FamixVWParameter new
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newParameterNamed: aName [

	<generated>
	^ self add: (FamixVWParameter named: aName)
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newReference [

	<generated>
	^ self add: FamixVWReference new
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newSourceLanguage [

	<generated>
	^ self add: FamixVWSourceLanguage new
]

{ #category : 'entity creation' }
FamixVWTEntityCreator >> newSourceTextAnchor [

	<generated>
	^ self add: FamixVWSourceTextAnchor new
]
