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
