"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `globalVariables` | `FamixTWithGlobalVariables` | `parentScope` | `FamixTGlobalVariable` | Global variables defined in the scope, if any.|
| `types` | `FamixTWithTypes` | `typeContainer` | `FamixTType` | Types contained (declared) in this entity, if any. #types is declared in ContainerEntity because different kinds of container can embed types. Types are usually contained in a Famix.Namespace. But types can also be contained in a Famix.Class or Famix.Method (in Java with inner classes for example). Famix.Function can also contain some types such as structs.|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `receivingInvocations` | `FamixTInvocationsReceiver` | `receiver` | `FamixTInvocation` | List of invocations performed on this entity (considered as the receiver)|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : 'FamixVWNamespace',
	#superclass : 'FamixVWNamedEntity',
	#traits : 'FamixTInvocationsReceiver + FamixTNamespace + FamixTWithClasses + FamixTWithGlobalVariables',
	#classTraits : 'FamixTInvocationsReceiver classTrait + FamixTNamespace classTrait + FamixTWithClasses classTrait + FamixTWithGlobalVariables classTrait',
	#category : 'Famix-VisualWorks-Entities-Entities',
	#package : 'Famix-VisualWorks-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixVWNamespace class >> annotation [

	<FMClass: #Namespace super: #FamixVWNamedEntity>
	<package: #'Famix-VisualWorks-Entities'>
	<generated>
	^ self
]
