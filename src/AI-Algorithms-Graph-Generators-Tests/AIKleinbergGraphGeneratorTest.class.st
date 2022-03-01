Class {
	#name : #AIKleinbergGraphGeneratorTest,
	#superclass : #TestCase,
	#category : #'AI-Algorithms-Graph-Generators-Tests'
}

{ #category : #tests }
AIKleinbergGraphGeneratorTest >> testNumberOfLocalNodes [
	| g |
	g := AIKleinbergGraphGenerator new.
	g nodes: (1 to: 10*10);
	n: 10.
	g initializeNodesOnGrid.
	self assert: (g nodesLessThanDistance: 1 toNode: g nodes first) size equals: 3.
	self assert: (g nodesLessThanDistance: 1 toNode: g nodes second) size equals: 4
]

{ #category : #'as yet unclassified' }
AIKleinbergGraphGeneratorTest >> testNumberOfLocalNodes_amp [

	"SmallAmp has derived this test from `AIKleinbergGraphGeneratorTest>>#testNumberOfLocalNodes` by regenerating its assertions.
	This test can cover this part:
	*	In `AIKleinbergGraphGenerator>> #n` from 4 to 6:
		Operation: RemoveCaretOperator
		Code snippet: `^ n`
		Dynamic state: {#n->nil}
		Mutant id: RemoveCaretOperator#AIKleinbergGraphGenerator#n#4#6
"

	<madeBySmallAmp>
	| g |
	g := AIKleinbergGraphGenerator new.
	self assert: g n isNil.
	(g
		 nodes: (1 to: 10 * 10);
		 n: 10) initializeNodesOnGrid
]

{ #category : #'as yet unclassified' }
AIKleinbergGraphGeneratorTest >> testNumberOfLocalNodes_amp_A35_O1 [

	<smallAmpCoveres:
	'ReplacePlusWithMinusMutantOperator#AIKleinbergGraphGenerator#initializeNodesOnGrid#121#144'>
	<smallAmpCoveres:
	'ReplacePlusWithMinusMutantOperator#AIKleinbergGraphGenerator#initializeNodesOnGrid#86#107'>
	<smallAmpFrom:
	'AIKleinbergGraphGeneratorTest>>#testNumberOfLocalNodes'>
	<madeBySmallAmp>
	| g anInteger |
	g := AIKleinbergGraphGenerator new.
	self
		assert: AIKleinbergGraphGenerator asString
		equals: 'AIKleinbergGraphGenerator';
		assert: g class equals: AIKleinbergGraphGenerator;
		assert: g graph class equals: Array;
		assert: g graph size equals: 2;
		assert: (g graph at: 1) class equals: SortedCollection;
		assertEmpty: (g graph at: 1);
		assert: (g graph at: 2) class equals: SortedCollection;
		assertEmpty: (g graph at: 2);
		assert: g edges class equals: SortedCollection;
		assertEmpty: g edges;
		assert: g n isNil;
		assert: g nodes class equals: SortedCollection;
		assertEmpty: g nodes.
	g nodes: (10 to: 10 * 1).
	self
		assert: g class equals: AIKleinbergGraphGenerator;
		assert: g graph class equals: Array;
		assert: g graph size equals: 2;
		assert: (g graph at: 1) class equals: SortedCollection;
		assert: (g graph at: 1) size equals: 1;
		assert: ((g graph at: 1) at: 1) class equals: AI2DGridNode;
		assert: (g graph at: 2) class equals: SortedCollection;
		assertEmpty: (g graph at: 2);
		assert: g edges class equals: SortedCollection;
		assertEmpty: g edges;
		assert: g n isNil;
		assert: g nodes class equals: SortedCollection;
		assert: g nodes size equals: 1;
		assert: (g nodes at: 1) class equals: AI2DGridNode;
		assert: (g nodes at: 1) x isNil;
		assert: (g nodes at: 1) adjacentNodes class
		equals: OrderedCollection;
		assertEmpty: (g nodes at: 1) adjacentNodes;
		assert: (g nodes at: 1) y isNil;
		assert: (g nodes at: 1) model equals: 10;
		assert: (g nodes at: 1) label equals: 'Node: '.
	g := g n: 10.
	self
		assert: g class equals: AIKleinbergGraphGenerator;
		assert: g graph class equals: Array;
		assert: g graph size equals: 2;
		assert: (g graph at: 1) class equals: SortedCollection;
		assert: (g graph at: 1) size equals: 1;
		assert: ((g graph at: 1) at: 1) class equals: AI2DGridNode;
		assert: (g graph at: 2) class equals: SortedCollection;
		assertEmpty: (g graph at: 2);
		assert: g edges class equals: SortedCollection;
		assertEmpty: g edges;
		assert: g n equals: 10;
		assert: g nodes class equals: SortedCollection;
		assert: g nodes size equals: 1;
		assert: (g nodes at: 1) class equals: AI2DGridNode;
		assert: (g nodes at: 1) x isNil;
		assert: (g nodes at: 1) adjacentNodes class
		equals: OrderedCollection;
		assertEmpty: (g nodes at: 1) adjacentNodes;
		assert: (g nodes at: 1) y isNil;
		assert: (g nodes at: 1) model equals: 10;
		assert: (g nodes at: 1) label equals: 'Node: '.
	anInteger := g n.
	self
		assert: g class equals: AIKleinbergGraphGenerator;
		assert: g graph class equals: Array;
		assert: g graph size equals: 2;
		assert: (g graph at: 1) class equals: SortedCollection;
		assert: (g graph at: 1) size equals: 1;
		assert: ((g graph at: 1) at: 1) class equals: AI2DGridNode;
		assert: (g graph at: 2) class equals: SortedCollection;
		assertEmpty: (g graph at: 2);
		assert: g edges class equals: SortedCollection;
		assertEmpty: g edges;
		assert: g n equals: 10;
		assert: g nodes class equals: SortedCollection;
		assert: g nodes size equals: 1;
		assert: (g nodes at: 1) class equals: AI2DGridNode;
		assert: (g nodes at: 1) x isNil;
		assert: (g nodes at: 1) adjacentNodes class
		equals: OrderedCollection;
		assertEmpty: (g nodes at: 1) adjacentNodes;
		assert: (g nodes at: 1) y isNil;
		assert: (g nodes at: 1) model equals: 10;
		assert: (g nodes at: 1) label equals: 'Node: ';
		assert: anInteger equals: 10.
	g initializeNodesOnGrid.
	self
		assert: g class equals: AIKleinbergGraphGenerator;
		assert: g graph class equals: Array;
		assert: g graph size equals: 2;
		assert: (g graph at: 1) class equals: SortedCollection;
		assert: (g graph at: 1) size equals: 1;
		assert: ((g graph at: 1) at: 1) class equals: AI2DGridNode;
		assert: (g graph at: 2) class equals: SortedCollection;
		assertEmpty: (g graph at: 2);
		assert: g edges class equals: SortedCollection;
		assertEmpty: g edges;
		assert: g n equals: 10;
		assert: g nodes class equals: SortedCollection;
		assert: g nodes size equals: 1;
		assert: (g nodes at: 1) class equals: AI2DGridNode;
		assert: (g nodes at: 1) x equals: 1;
		assert: (g nodes at: 1) adjacentNodes class
		equals: OrderedCollection;
		assertEmpty: (g nodes at: 1) adjacentNodes;
		assert: (g nodes at: 1) y equals: 1;
		assert: (g nodes at: 1) model equals: 10;
		assert: (g nodes at: 1) label equals: 'Node: '
]

{ #category : #'as yet unclassified' }
AIKleinbergGraphGeneratorTest >> testNumberOfLocalNodes_amp_A39 [

	"SmallAmp has derived this test from `AIKleinbergGraphGeneratorTest>>#testNumberOfLocalNodes` by applying some transformations and regenerating its assertions.
	This test can cover this part:
	*	In `AIKleinbergGraphGenerator>> #buildUniformDistributionOfLongRangeLinks` from 123 to 284:
		Operation: ReplaceDoBlockWithEmptyBlockOperator
		Code snippet: `nodes do: [ :each | 
	q timesRepeat: [ 
		self
			addEdge: { 
					each model.
					nodes atRandom model }
			from: #first
			to: #second ] ]`
		Dynamic state: nil
		Mutant id: ReplaceDoBlockWithEmptyBlockOperator#AIKleinbergGraphGenerator#buildUniformDistributionOfLongRangeLinks#123#284
"

	<madeBySmallAmp>
	| g |
	g := AIKleinbergGraphGenerator new.
	g := g
		     nodes: (1 to: 10 * 10);
		     n: 10.
	g initializeNodesOnGrid.
	self
		should: [ g buildUniformDistributionOfLongRangeLinks ]
		raise: MessageNotUnderstood
]

{ #category : #'as yet unclassified' }
AIKleinbergGraphGeneratorTest >> testNumberOfLocalNodes_amp_A9 [

	<madeBySmallAmp>
	| g |
	'SmallAmp has derived this test from `AIKleinbergGraphGeneratorTest>>#testNumberOfLocalNodes` by applying some transformations and regenerating its assertions.
	This test can cover these parts:
	*	In `AIKleinbergGraphGenerator>> #buildLongRangeLinks` from 178 to 692:
		Operation: ReplaceDoBlockWithEmptyBlockOperator
		Code snippet: `nodes do: [ :n1 | 
	probs := #( 0 ) asOrderedCollection.
	nodes do: [ :n2 | 
		| d |
		n1 == n2 ifFalse: [ 
			d := self distanceFrom: n1 to: n2.
			probs add: (d raisedTo: r negated) ] ].
	cdf := probs cumsum asSortedCollection.
	"We create q long range links"
	q timesRepeat: [ 
		| target |
		target := nodes at: (cdf indexForInserting: cdf last random).
		self
			addEdge: { 
					n1 model.
					target model }
			from: #first
			to: #second ] ]`
		Dynamic state: nil
		Mutant id: ReplaceDoBlockWithEmptyBlockOperator#AIKleinbergGraphGenerator#buildLongRangeLinks#178#692
	*	In `AIKleinbergGraphGenerator>> #buildLongRangeLinks` from 78 to 699:
		Operation: ReplaceIfFalseReceiverWithTrueOperator
		Code snippet: `q == 0 ifFalse: [ 
	r == 0
		ifTrue: [ self buildUniformDistributionOfLongRangeLinks ]
		ifFalse: [ 
			nodes do: [ :n1 | 
				probs := #( 0 ) asOrderedCollection.
				nodes do: [ :n2 | 
					| d |
					n1 == n2 ifFalse: [ 
						d := self distanceFrom: n1 to: n2.
						probs add: (d raisedTo: r negated) ] ].
				cdf := probs cumsum asSortedCollection.
				"We create q long range links"
				q timesRepeat: [ 
					| target |
					target := nodes at: (cdf indexForInserting: cdf last random).
					self
						addEdge: { 
								n1 model.
								target model }
						from: #first
						to: #second ] ] ] ]`
		Dynamic state: {#q->nil. #r->nil}
		Mutant id: ReplaceIfFalseReceiverWithTrueOperator#AIKleinbergGraphGenerator#buildLongRangeLinks#78#699
	*	In `AIKleinbergGraphGenerator>> #buildLongRangeLinks` from 78 to 83:
		Operation: ReplaceIdentityWithNegationOfIdentity
		Code snippet: `q == 0`
		Dynamic state: {#q->nil}
		Mutant id: ReplaceIdentityWithNegationOfIdentity#AIKleinbergGraphGenerator#buildLongRangeLinks#78#83
	*	In `AIKleinbergGraphGenerator>> #buildLongRangeLinks` from 78 to 699:
		Operation: ReplaceIfFalseWithIfTrueMutantOperator
		Code snippet: `q == 0 ifFalse: [ 
	r == 0
		ifTrue: [ self buildUniformDistributionOfLongRangeLinks ]
		ifFalse: [ 
			nodes do: [ :n1 | 
				probs := #( 0 ) asOrderedCollection.
				nodes do: [ :n2 | 
					| d |
					n1 == n2 ifFalse: [ 
						d := self distanceFrom: n1 to: n2.
						probs add: (d raisedTo: r negated) ] ].
				cdf := probs cumsum asSortedCollection.
				"We create q long range links"
				q timesRepeat: [ 
					| target |
					target := nodes at: (cdf indexForInserting: cdf last random).
					self
						addEdge: { 
								n1 model.
								target model }
						from: #first
						to: #second ] ] ] ]`
		Dynamic state: {#q->nil. #r->nil}
		Mutant id: ReplaceIfFalseWithIfTrueMutantOperator#AIKleinbergGraphGenerator#buildLongRangeLinks#78#699
'.
	g := AIKleinbergGraphGenerator new.
	g nodes: (1 to: 10 * 10).
	self should: [ g buildLongRangeLinks ] raise: MessageNotUnderstood
]
