"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `parentPackage` | `FamixTPackageable` | `childEntities` | `FamixTPackage` | Package containing the entity in the code structure (if applicable)|
| `parentType` | `FamixTMethod` | `methods` | `FamixTWithMethods` | Type declaring the method. It provides the implementation for belongsTo.|

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `comments` | `FamixTWithComments` | `commentedEntity` | `FamixTComment` | List of comments for the entity|
| `definedAnnotationTypes` | `FamixTWithAnnotationTypes` | `annotationTypesContainer` | `FamixTAnnotationType` | The container in which the AnnotationTypes may be declared|
| `implicitVariables` | `FamixTWithImplicitVariables` | `parentBehaviouralEntity` | `FamixTImplicitVariable` | Implicit variables used locally by this behaviour.|
| `localVariables` | `FamixTWithLocalVariables` | `parentBehaviouralEntity` | `FamixTLocalVariable` | Variables locally defined by this behaviour.|
| `parameters` | `FamixTWithParameters` | `parentBehaviouralEntity` | `FamixTParameter` | List of formal parameters declared by this behaviour.|

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `accesses` | `FamixTWithAccesses` | `accessor` | `FamixTAccess` | Accesses to variables made by this behaviour.|
| `outgoingInvocations` | `FamixTWithInvocations` | `sender` | `FamixTInvocation` | Outgoing invocations sent by this behaviour.|
| `outgoingReferences` | `FamixTWithReferences` | `referencer` | `FamixTReference` | References from this entity to other entities.|
| `typing` | `FamixTTypedEntity` | `typedEntity` | `FamixTEntityTyping` | Association linking this entity to its declared type.|

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingInvocations` | `FamixTInvocable` | `candidates` | `FamixTInvocation` | Incoming invocations from other behaviours computed by the candidate operator.|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `annotationInstances` | `FamixTWithAnnotationInstances` | `annotatedEntity` | `FamixTAnnotationInstance` | This property corresponds to the set of annotations associated to the entity|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isAbstract` | `Boolean` | false | Entity can be declared abstract|
| `isClassSide` | `Boolean` | false | Entity can be declared class side i.e. static|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
| `kind` | `String` | nil | Tag indicating a setter, getter, constant, constructor method|
| `name` | `String` | nil | Basic name of the entity, not full reference.|
| `protocol` | `String` | nil | Protocol of the method|
| `signature` | `String` | nil | Signature of the message being sent|

"
Class {
	#name : 'FamixVWMethod',
	#superclass : 'FamixVWNamedEntity',
	#traits : 'FamixTCanBeAbstract + FamixTCanBeClassSide + FamixTHasKind + FamixTMethod + FamixTPackageable + FamixTWithAnnotationInstances + FamixTWithAnnotationTypes + FamixTWithComments',
	#classTraits : 'FamixTCanBeAbstract classTrait + FamixTCanBeClassSide classTrait + FamixTHasKind classTrait + FamixTMethod classTrait + FamixTPackageable classTrait + FamixTWithAnnotationInstances classTrait + FamixTWithAnnotationTypes classTrait + FamixTWithComments classTrait',
	#instVars : [
		'#protocol => FMProperty'
	],
	#category : 'Famix-VisualWorks-Entities-Entities',
	#package : 'Famix-VisualWorks-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixVWMethod class >> annotation [

	<FMClass: #Method super: #FamixVWNamedEntity>
	<package: #'Famix-VisualWorks-Entities'>
	<generated>
	^ self
]

{ #category : 'accessing' }
FamixVWMethod >> protocol [

	<FMProperty: #protocol type: #String>
	<generated>
	<FMComment: 'Protocol of the method'>
	^ protocol
]

{ #category : 'accessing' }
FamixVWMethod >> protocol: anObject [
	<generated>
	protocol := anObject
]
