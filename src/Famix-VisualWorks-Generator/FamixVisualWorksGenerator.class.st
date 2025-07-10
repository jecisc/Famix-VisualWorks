Class {
	#name : 'FamixVisualWorksGenerator',
	#superclass : 'FamixBasicInfrastructureGenerator',
	#instVars : [
		'access',
		'attribute',
		'class',
		'globalVariable',
		'implicitVariable',
		'inheritance',
		'invocation',
		'localVariable',
		'method',
		'namespace',
		'package',
		'parameter',
		'reference'
	],
	#category : 'Famix-VisualWorks-Generator',
	#package : 'Famix-VisualWorks-Generator'
}

{ #category : 'accessing' }
FamixVisualWorksGenerator class >> packageName [

	^ #'Famix-VisualWorks-Entities'
]

{ #category : 'accessing' }
FamixVisualWorksGenerator class >> prefix [

	^ #'FamixVW'
]

{ #category : 'initialization' }
FamixVisualWorksGenerator >> defineClasses [
	super defineClasses.

	access := self newClassNamed: #Access.
	attribute := self newClassNamed: #Attribute.
	class := self newClassNamed: #Class.
	globalVariable := self newClassNamed: #GlobalVariable.
	implicitVariable := self newClassNamed: #ImplicitVariable.
	inheritance := self newClassNamed: #Inheritance.
	invocation := self newClassNamed: #Invocation.
	localVariable := self newClassNamed: #LocalVariable.
	method := self newClassNamed: #Method.
	namespace := self newClassNamed: #Namespace.
	package := self newClassNamed: #Package.
	parameter := self newClassNamed: #Parameter.
	reference := self newClassNamed: #Reference.
]

{ #category : 'initialization' }
FamixVisualWorksGenerator >> defineHierarchy [

	super defineHierarchy.

	access --|> #TAccess.

	attribute --|> namedEntity.
	attribute --|> #TAttribute.
	attribute --|> #TInvocationsReceiver.
	attribute --|> #TCanBeClassSide.

	class --|> namedEntity.
	class --|> #TClass.
	class --|> #TCanBeAbstract.
	class --|> #TClassMetrics.
	class --|> #TPackageable.

	globalVariable --|> namedEntity.
	globalVariable --|> #TGlobalVariable.
	globalVariable --|> #TInvocationsReceiver.

	implicitVariable --|> namedEntity.
	implicitVariable --|> #TImplicitVariable.
	implicitVariable --|> #TInvocationsReceiver.

	inheritance --|> #TInheritance.

	invocation --|> #TInvocation.

	localVariable --|> namedEntity.
	localVariable --|> #TLocalVariable.
	localVariable --|> #TInvocationsReceiver.

	method --|> namedEntity.
	method --|> #TMethod.
	method --|> #TWithAnnotationTypes.
	method --|> #TCanBeAbstract.
	method --|> #THasKind.
	method --|> #TWithComments.
	method --|> #TWithAnnotationInstances.
	method --|> #TCanBeClassSide.
	method --|> #TPackageable.

	namedEntity --|> #TInvocationsReceiver.
	namedEntity --|> #TEntityMetaLevelDependency.
	namedEntity --|> sourcedEntity.

	namespace --|> namedEntity.
	namespace --|> #TNamespace.
	namespace --|> #TWithGlobalVariables.
	namespace --|> #TWithClasses.
	namespace --|> #TInvocationsReceiver.

	package --|> namedEntity.
	package --|> #TPackage.
	package --|> #TWithGlobalVariables.
	package --|> #TWithClasses.
	package --|> #TCohesionCouplingMetrics.

	parameter --|> namedEntity.
	parameter --|> #TParameter.
	parameter --|> #TInvocationsReceiver.

	reference --|> #TReference.
]

{ #category : 'definition' }
FamixVisualWorksGenerator >> defineProperties [
	super defineProperties.
	((method property: #protocol type: #String)
		comment: 'Protocol of the method'). 
]

{ #category : 'initialization' }
FamixVisualWorksGenerator >> newBuilder [

	^ super newBuilder
		  withFileImport;
		  yourself
]
