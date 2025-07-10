"
This class is used to choose the entities to be imported when loading a model from file.
It is used by `MiImportingContextPresenter` in a `MiImportModelFromFileDialog` to import a FamixVWModel.
"
Class {
	#name : 'FamixVWImportingContext',
	#superclass : 'FamixImportingContext',
	#category : 'Famix-VisualWorks-Entities-Import',
	#package : 'Famix-VisualWorks-Entities',
	#tag : 'Import'
}

{ #category : 'accessing' }
FamixVWImportingContext class >> importedMetamodel [

	<generated>
	^ FamixVWModel metamodel
]

{ #category : 'importing' }
FamixVWImportingContext >> importAccess [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #Access)
]

{ #category : 'importing' }
FamixVWImportingContext >> importAttribute [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Attribute)
]

{ #category : 'importing' }
FamixVWImportingContext >> importClass [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Class)
]

{ #category : 'importing' }
FamixVWImportingContext >> importComment [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Comment)
]

{ #category : 'importing' }
FamixVWImportingContext >> importGlobalVariable [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #GlobalVariable)
]

{ #category : 'importing' }
FamixVWImportingContext >> importImplicitVariable [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ImplicitVariable)
]

{ #category : 'importing' }
FamixVWImportingContext >> importInheritance [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #Inheritance)
]

{ #category : 'importing' }
FamixVWImportingContext >> importInvocation [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #Invocation)
]

{ #category : 'importing' }
FamixVWImportingContext >> importLocalVariable [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #LocalVariable)
]

{ #category : 'importing' }
FamixVWImportingContext >> importMethod [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Method)
]

{ #category : 'importing' }
FamixVWImportingContext >> importNamespace [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Namespace)
]

{ #category : 'importing' }
FamixVWImportingContext >> importPackage [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Package)
]

{ #category : 'importing' }
FamixVWImportingContext >> importParameter [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Parameter)
]

{ #category : 'importing' }
FamixVWImportingContext >> importReference [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #Reference)
]

{ #category : 'importing' }
FamixVWImportingContext >> importSourceLanguage [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #SourceLanguage)
]

{ #category : 'importing' }
FamixVWImportingContext >> importSourceTextAnchor [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #SourceTextAnchor)
]

{ #category : 'testing' }
FamixVWImportingContext >> shouldImportAccess [

	<generated>
	^ self shouldImport: #Access
]

{ #category : 'testing' }
FamixVWImportingContext >> shouldImportAttribute [

	<generated>
	^ self shouldImport: #Attribute
]

{ #category : 'testing' }
FamixVWImportingContext >> shouldImportClass [

	<generated>
	^ self shouldImport: #Class
]

{ #category : 'testing' }
FamixVWImportingContext >> shouldImportComment [

	<generated>
	^ self shouldImport: #Comment
]

{ #category : 'testing' }
FamixVWImportingContext >> shouldImportGlobalVariable [

	<generated>
	^ self shouldImport: #GlobalVariable
]

{ #category : 'testing' }
FamixVWImportingContext >> shouldImportImplicitVariable [

	<generated>
	^ self shouldImport: #ImplicitVariable
]

{ #category : 'testing' }
FamixVWImportingContext >> shouldImportInheritance [

	<generated>
	^ self shouldImport: #Inheritance
]

{ #category : 'testing' }
FamixVWImportingContext >> shouldImportInvocation [

	<generated>
	^ self shouldImport: #Invocation
]

{ #category : 'testing' }
FamixVWImportingContext >> shouldImportLocalVariable [

	<generated>
	^ self shouldImport: #LocalVariable
]

{ #category : 'testing' }
FamixVWImportingContext >> shouldImportMethod [

	<generated>
	^ self shouldImport: #Method
]

{ #category : 'testing' }
FamixVWImportingContext >> shouldImportNamespace [

	<generated>
	^ self shouldImport: #Namespace
]

{ #category : 'testing' }
FamixVWImportingContext >> shouldImportPackage [

	<generated>
	^ self shouldImport: #Package
]

{ #category : 'testing' }
FamixVWImportingContext >> shouldImportParameter [

	<generated>
	^ self shouldImport: #Parameter
]

{ #category : 'testing' }
FamixVWImportingContext >> shouldImportReference [

	<generated>
	^ self shouldImport: #Reference
]

{ #category : 'testing' }
FamixVWImportingContext >> shouldImportSourceLanguage [

	<generated>
	^ self shouldImport: #SourceLanguage
]

{ #category : 'testing' }
FamixVWImportingContext >> shouldImportSourceTextAnchor [

	<generated>
	^ self shouldImport: #SourceTextAnchor
]
