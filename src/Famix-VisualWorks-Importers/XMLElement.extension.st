Extension { #name : 'XMLElement' }

{ #category : '*Famix-VisualWorks-Importers' }
XMLElement >> accept: aVisitor [

	aVisitor handleNode: self
]
