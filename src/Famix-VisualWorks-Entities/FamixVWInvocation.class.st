"
## Relations
======================

### Association source
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sender` | `FamixTInvocation` | `outgoingInvocations` | `FamixTWithInvocations` | Behavioural entity making the call. from-side of the association|

### Association target
| Relation | Origin | Opposite | Type | Comment |
|---|
| `candidates` | `FamixTInvocation` | `incomingInvocations` | `FamixTInvocable` | List of candidate behavioural entities for receiving the invocation|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `next` | `FamixTAssociation` | `previous` | `FamixTAssociation` | Next association in an ordered collection of associations. Currently not supported by the Moose importer|
| `previous` | `FamixTAssociation` | `next` | `FamixTAssociation` | Previous association in an ordered collection of associations. Currently not supported by the Moose importer|
| `receiver` | `FamixTInvocation` | `receivingInvocations` | `FamixTInvocationsReceiver` | Named entity (variable, class...) receiving the invocation. to-side of the association|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `signature` | `String` | nil | Signature of the message being sent|

"
Class {
	#name : 'FamixVWInvocation',
	#superclass : 'FamixVWEntity',
	#traits : 'FamixTInvocation',
	#classTraits : 'FamixTInvocation classTrait',
	#category : 'Famix-VisualWorks-Entities-Entities',
	#package : 'Famix-VisualWorks-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixVWInvocation class >> annotation [

	<FMClass: #Invocation super: #FamixVWEntity>
	<package: #'Famix-VisualWorks-Entities'>
	<generated>
	^ self
]
