"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `parentPackage` | `FamixTPackageable` | `childEntities` | `FamixTPackage` | Package containing the entity in the code structure (if applicable)|
| `typeContainer` | `FamixTType` | `types` | `FamixTWithTypes` | Container entity to which this type belongs. Container is a namespace, not a package (Smalltalk).|

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `attributes` | `FamixTWithAttributes` | `parentType` | `FamixTAttribute` | List of attributes declared by this type.|
| `comments` | `FamixTWithComments` | `commentedEntity` | `FamixTComment` | List of comments for the entity|
| `methods` | `FamixTWithMethods` | `parentType` | `FamixTMethod` | Methods declared by this type.|

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `superInheritances` | `FamixTWithInheritances` | `subclass` | `FamixTInheritance` | Superinheritance relationships, i.e. known superclasses of this type.|

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingReferences` | `FamixTReferenceable` | `referredEntity` | `FamixTReference` | References to this entity by other entities.|
| `incomingTypings` | `FamixTType` | `declaredType` | `FamixTEntityTyping` | Relations to the entities that have this as type.|
| `subInheritances` | `FamixTWithInheritances` | `superclass` | `FamixTInheritance` | Subinheritance relationships, i.e. known subclasses of this type.|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `receivingInvocations` | `FamixTInvocationsReceiver` | `receiver` | `FamixTInvocation` | List of invocations performed on this entity (considered as the receiver)|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isAbstract` | `Boolean` | false | Entity can be declared abstract|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : 'FamixVWClass',
	#superclass : 'FamixVWNamedEntity',
	#traits : 'FamixTCanBeAbstract + FamixTClass + FamixTClassMetrics + FamixTPackageable',
	#classTraits : 'FamixTCanBeAbstract classTrait + FamixTClass classTrait + FamixTClassMetrics classTrait + FamixTPackageable classTrait',
	#category : 'Famix-VisualWorks-Entities-Entities',
	#package : 'Famix-VisualWorks-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixVWClass class >> annotation [

	<FMClass: #Class super: #FamixVWNamedEntity>
	<package: #'Famix-VisualWorks-Entities'>
	<generated>
	^ self
]
