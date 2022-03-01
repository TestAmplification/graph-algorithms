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
