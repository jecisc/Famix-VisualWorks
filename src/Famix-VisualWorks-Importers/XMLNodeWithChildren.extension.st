Extension { #name : 'XMLNodeWithChildren' }

{ #category : '*Famix-VisualWorks-Importers' }
XMLNodeWithChildren >> accept: aVisitor [

	^ self childrenAccept: aVisitor
]

{ #category : '*Famix-VisualWorks-Importers' }
XMLNodeWithChildren >> childrenAccept: aVisitor [

	nodes ifNotNil: [ nodes do: [ :node | node accept: aVisitor ] ]
]
