"
A MalWaltzStrogatzGraphGeneratorTest is a test class for testing the behavior of MalWaltzStrogatzGraphGenerator
"
Class {
	#name : #AIWaltzStrogatzGraphGeneratorTest,
	#superclass : #TestCase,
	#category : #'AI-Algorithms-Graph-Generators-Tests'
}

{ #category : #tests }
AIWaltzStrogatzGraphGeneratorTest >> testNumberOfNodes [
	| g |
	g := AIWaltzStrogatzGraphGenerator new.
	g
		nodes: (1 to: 30);
		k: 10.
	g run.
	self assert: g nodes size equals: 30
]

{ #category : #'as yet unclassified' }
AIWaltzStrogatzGraphGeneratorTest >> testNumberOfNodes_amp [

	"SmallAmp has derived this test from `AIWaltzStrogatzGraphGeneratorTest>>#testNumberOfNodes` by regenerating its assertions.
	This test can cover these parts:
	*	In `AIWaltzStrogatzGraphGenerator>> #buildRegularLattice` from 130 to 140:
		Operation: ReplaceMinusWithPlusMutantOperator
		Code snippet: `i + e - 1`
		Dynamic state: {#i->30. #e->5}
		Mutant id: ReplaceMinusWithPlusMutantOperator#AIWaltzStrogatzGraphGenerator#buildRegularLattice#130#140
	*	In `AIWaltzStrogatzGraphGenerator>> #buildRegularLattice` from 113 to 123:
		Operation: ReplaceMinusWithPlusMutantOperator
		Code snippet: `i - e - 1`
		Dynamic state: {#i->30. #e->5}
		Mutant id: ReplaceMinusWithPlusMutantOperator#AIWaltzStrogatzGraphGenerator#buildRegularLattice#113#123
	*	In `AIWaltzStrogatzGraphGenerator>> #buildRegularLattice` from 131 to 135:
		Operation: ReplacePlusWithMinusMutantOperator
		Code snippet: `(i + e)`
		Dynamic state: {#i->30. #e->5}
		Mutant id: ReplacePlusWithMinusMutantOperator#AIWaltzStrogatzGraphGenerator#buildRegularLattice#131#135
	*	In `AIWaltzStrogatzGraphGenerator>> #buildRegularLattice` from 105 to 108:
		Operation: ReplaceDivisionWithMultiplicationMutantOperator
		Code snippet: `k / 2`
		Dynamic state: {#k->10}
		Mutant id: ReplaceDivisionWithMultiplicationMutantOperator#AIWaltzStrogatzGraphGenerator#buildRegularLattice#105#108
	*	In `AIWaltzStrogatzGraphGenerator>> #buildRegularLattice` from 114 to 118:
		Operation: ReplaceMinusWithPlusMutantOperator
		Code snippet: `(i - e)`
		Dynamic state: {#i->30. #e->5}
		Mutant id: ReplaceMinusWithPlusMutantOperator#AIWaltzStrogatzGraphGenerator#buildRegularLattice#114#118
"

	<madeBySmallAmp>
	| g |
	g := AIWaltzStrogatzGraphGenerator new.
	g := g
		     nodes: (1 to: 30);
		     k: 10.
	g run.
	self assert: (g graph at: 2) size equals: 330
]
