"
A MalErdosRenyiGNPGraphGeneratorTest is a test class for testing the behavior of MalErdosRenyiGNPGraphGenerator
"
Class {
	#name : #AIErdosRenyiGNPGraphGeneratorTest,
	#superclass : #TestCase,
	#category : #'AI-Algorithms-Graph-Generators-Tests'
}

{ #category : #tests }
AIErdosRenyiGNPGraphGeneratorTest >> testNumberOfNodes [
	| g |
	g := AIErdosRenyiGNPGraphGenerator new.
	g
		nodes: (1 to: 30);
		probability: 0.5.
	g run.
	self assert: g nodes size equals: 30
]

{ #category : #'as yet unclassified' }
AIErdosRenyiGNPGraphGeneratorTest >> testNumberOfNodes_amp_L1_R2 [

	"SmallAmp has derived this test from `AIErdosRenyiGNPGraphGeneratorTest>>#testNumberOfNodes` by applying some transformations and regenerating its assertions.
	This test can cover these parts:
	*	In `AIErdosRenyiGNPGraphGenerator>> #run` from 281 to 489:
		Operation: ReplaceIfTrueReceiverWithFalseOperator
		Code snippet: `n1 ~= n2 ifTrue: [ 
	100 atRandom / 100 < probability ifTrue: [ 
		self
			addEdge: { 
					n1 model.
					n2 model }
			from: #first
			to: #second ] ]`
		Dynamic state: {#probability->0.5}
		Mutant id: ReplaceIfTrueReceiverWithFalseOperator#AIErdosRenyiGNPGraphGenerator#run#281#489
	*	In `AIErdosRenyiGNPGraphGenerator>> #run` from 248 to 491:
		Operation: ReplaceDoBlockWithEmptyBlockOperator
		Code snippet: `self nodes do: [ :n2 | 
	n1 ~= n2 ifTrue: [ 
		100 atRandom / 100 < probability ifTrue: [ 
			self
				addEdge: { 
						n1 model.
						n2 model }
				from: #first
				to: #second ] ] ]`
		Dynamic state: nil
		Mutant id: ReplaceDoBlockWithEmptyBlockOperator#AIErdosRenyiGNPGraphGenerator#run#248#491
	*	In `AIErdosRenyiGNPGraphGenerator>> #run` from 219 to 493:
		Operation: ReplaceDoBlockWithEmptyBlockOperator
		Code snippet: `self nodes do: [ :n1 | 
	self nodes do: [ :n2 | 
		n1 ~= n2 ifTrue: [ 
			100 atRandom / 100 < probability ifTrue: [ 
				self
					addEdge: { 
							n1 model.
							n2 model }
					from: #first
					to: #second ] ] ] ]`
		Dynamic state: nil
		Mutant id: ReplaceDoBlockWithEmptyBlockOperator#AIErdosRenyiGNPGraphGenerator#run#219#493
	*	In `AIErdosRenyiGNPGraphGenerator>> #run` from 314 to 487:
		Operation: ReplaceIfTrueReceiverWithFalseOperator
		Code snippet: `100 atRandom / 100 < probability ifTrue: [ 
	self
		addEdge: { 
				n1 model.
				n2 model }
		from: #first
		to: #second ]`
		Dynamic state: {#probability->0.5}
		Mutant id: ReplaceIfTrueReceiverWithFalseOperator#AIErdosRenyiGNPGraphGenerator#run#314#487
"

	<madeBySmallAmp>
	| g |
	g := AIErdosRenyiGNPGraphGenerator new.
	g nodes: (0 to: 30).
	self should: [ g run ] raise: MessageNotUnderstood
]

{ #category : #'as yet unclassified' }
AIErdosRenyiGNPGraphGeneratorTest >> testNumberOfNodes_amp_L23 [

	"SmallAmp has derived this test from `AIErdosRenyiGNPGraphGeneratorTest>>#testNumberOfNodes` by applying some transformations and regenerating its assertions.
	This test can cover these parts:
	*	In `AIErdosRenyiGNPGraphGenerator>> #run` from 314 to 487:
		Operation: ReplaceIfTrueWithIfFalseMutantOperator
		Code snippet: `100 atRandom / 100 < probability ifTrue: [ 
	self
		addEdge: { 
				n1 model.
				n2 model }
		from: #first
		to: #second ]`
		Dynamic state: {#probability->0.5}
		Mutant id: ReplaceIfTrueWithIfFalseMutantOperator#AIErdosRenyiGNPGraphGenerator#run#314#487
	*	In `AIErdosRenyiGNPGraphGenerator>> #run` from 314 to 345:
		Operation: ReplaceLessWithGreaterMutantOperator
		Code snippet: `100 atRandom / 100 < probability`
		Dynamic state: {#probability->0.0}
		Mutant id: ReplaceLessWithGreaterMutantOperator#AIErdosRenyiGNPGraphGenerator#run#314#345
	*	In `AIErdosRenyiGNPGraphGenerator>> #run` from 314 to 487:
		Operation: ReplaceIfTrueReceiverWithTrueOperator
		Code snippet: `100 atRandom / 100 < probability ifTrue: [ 
	self
		addEdge: { 
				n1 model.
				n2 model }
		from: #first
		to: #second ]`
		Dynamic state: {#probability->0.5}
		Mutant id: ReplaceIfTrueReceiverWithTrueOperator#AIErdosRenyiGNPGraphGenerator#run#314#487
"

	<madeBySmallAmp>
	| g |
	g := AIErdosRenyiGNPGraphGenerator new.
	g := g
		     nodes: (1 to: 30);
		     probability: 0.0.
	g run.
	self assertEmpty: (g graph at: 2)
]

{ #category : #'as yet unclassified' }
AIErdosRenyiGNPGraphGeneratorTest >> testNumberOfNodes_amp_L4_L14 [

	"SmallAmp has derived this test from `AIErdosRenyiGNPGraphGeneratorTest>>#testNumberOfNodes` by applying some transformations and regenerating its assertions.
	This test can cover these parts:
	*	In `AIErdosRenyiGNPGraphGenerator>> #run` from 281 to 288:
		Operation: ReplaceNotEqualWithEqualOperator
		Code snippet: `n1 ~= n2`
		Dynamic state: nil
		Mutant id: ReplaceNotEqualWithEqualOperator#AIErdosRenyiGNPGraphGenerator#run#281#288
	*	In `AIErdosRenyiGNPGraphGenerator>> #run` from 314 to 331:
		Operation: ReplaceDivisionWithMultiplicationMutantOperator
		Code snippet: `(100 atRandom / 100)`
		Dynamic state: nil
		Mutant id: ReplaceDivisionWithMultiplicationMutantOperator#AIErdosRenyiGNPGraphGenerator#run#314#331
"

	<madeBySmallAmp>
	| g |
	g := AIErdosRenyiGNPGraphGenerator new.
	g := g
		     nodes: (0 to: 30);
		     probability: 1.5.
	g run.
	self assert: (g graph at: 2) size equals: 930
]

{ #category : #'as yet unclassified' }
AIErdosRenyiGNPGraphGeneratorTest >> testNumberOfNodes_amp_L8 [

	"SmallAmp has derived this test from `AIErdosRenyiGNPGraphGeneratorTest>>#testNumberOfNodes` by applying some transformations and regenerating its assertions.
	This test can cover these parts:
	*	In `AIErdosRenyiGNPGraphGenerator>> #run` from 281 to 489:
		Operation: ReplaceIfTrueReceiverWithTrueOperator
		Code snippet: `n1 ~= n2 ifTrue: [ 
	100 atRandom / 100 < probability ifTrue: [ 
		self
			addEdge: { 
					n1 model.
					n2 model }
			from: #first
			to: #second ] ]`
		Dynamic state: {#probability->0.5}
		Mutant id: ReplaceIfTrueReceiverWithTrueOperator#AIErdosRenyiGNPGraphGenerator#run#281#489
	*	In `AIErdosRenyiGNPGraphGenerator>> #run` from 281 to 489:
		Operation: ReplaceIfTrueWithIfFalseMutantOperator
		Code snippet: `n1 ~= n2 ifTrue: [ 
	100 atRandom / 100 < probability ifTrue: [ 
		self
			addEdge: { 
					n1 model.
					n2 model }
			from: #first
			to: #second ] ]`
		Dynamic state: {#probability->0.5}
		Mutant id: ReplaceIfTrueWithIfFalseMutantOperator#AIErdosRenyiGNPGraphGenerator#run#281#489
"

	<madeBySmallAmp>
	| g |
	g := AIErdosRenyiGNPGraphGenerator new.
	g := g
		     nodes: (30 to: 30);
		     probability: 0.5.
	g run.
	self assertEmpty: (g graph at: 2)
]
