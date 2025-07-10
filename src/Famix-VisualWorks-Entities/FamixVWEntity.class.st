Class {
	#name : 'FamixVWEntity',
	#superclass : 'MooseEntity',
	#category : 'Famix-VisualWorks-Entities-Entities',
	#package : 'Famix-VisualWorks-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixVWEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'Famix-VisualWorks-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : 'testing' }
FamixVWEntity class >> isAbstract [

	<generated>
	^ self == FamixVWEntity
]

{ #category : 'meta' }
FamixVWEntity class >> metamodel [

	<generated>
	^ FamixVWModel metamodel
]

{ #category : 'testing' }
FamixVWEntity >> isAccess [

	<generated>
	^ false
]

{ #category : 'testing' }
FamixVWEntity >> isAssociation [

	<generated>
	^ false
]

{ #category : 'testing' }
FamixVWEntity >> isAttribute [

	<generated>
	^ false
]

{ #category : 'testing' }
FamixVWEntity >> isBehavioural [

	<generated>
	^ false
]

{ #category : 'testing' }
FamixVWEntity >> isClass [

	<generated>
	^ false
]

{ #category : 'testing' }
FamixVWEntity >> isComment [

	<generated>
	^ false
]

{ #category : 'testing' }
FamixVWEntity >> isGlobalVariable [

	<generated>
	^ false
]

{ #category : 'testing' }
FamixVWEntity >> isImplicitVariable [

	<generated>
	^ false
]

{ #category : 'testing' }
FamixVWEntity >> isInheritance [

	<generated>
	^ false
]

{ #category : 'testing' }
FamixVWEntity >> isInvocation [

	<generated>
	^ false
]

{ #category : 'testing' }
FamixVWEntity >> isLocalVariable [

	<generated>
	^ false
]

{ #category : 'testing' }
FamixVWEntity >> isMethod [

	<generated>
	^ false
]

{ #category : 'testing' }
FamixVWEntity >> isNamedEntity [

	<generated>
	^ false
]

{ #category : 'testing' }
FamixVWEntity >> isNamespace [

	<generated>
	^ false
]

{ #category : 'testing' }
FamixVWEntity >> isPackage [

	<generated>
	^ false
]

{ #category : 'testing' }
FamixVWEntity >> isQueryable [

	<generated>
	^ false
]

{ #category : 'testing' }
FamixVWEntity >> isReference [

	<generated>
	^ false
]

{ #category : 'testing' }
FamixVWEntity >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : 'testing' }
FamixVWEntity >> isType [

	<generated>
	^ false
]
