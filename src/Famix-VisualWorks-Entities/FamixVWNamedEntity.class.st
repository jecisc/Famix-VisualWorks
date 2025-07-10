"
## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `receivingInvocations` | `FamixTInvocationsReceiver` | `receiver` | `FamixTInvocation` | List of invocations performed on this entity (considered as the receiver)|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : 'FamixVWNamedEntity',
	#superclass : 'FamixVWSourcedEntity',
	#traits : 'FamixTInvocationsReceiver + FamixTNamedEntity + TEntityMetaLevelDependency',
	#classTraits : 'FamixTInvocationsReceiver classTrait + FamixTNamedEntity classTrait + TEntityMetaLevelDependency classTrait',
	#category : 'Famix-VisualWorks-Entities-Entities',
	#package : 'Famix-VisualWorks-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixVWNamedEntity class >> annotation [

	<FMClass: #NamedEntity super: #FamixVWSourcedEntity>
	<package: #'Famix-VisualWorks-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : 'testing' }
FamixVWNamedEntity class >> isAbstract [

	<generated>
	^ self == FamixVWNamedEntity
]

{ #category : 'testing' }
FamixVWNamedEntity >> isNamedEntity [

	<generated>
	^ true
]
