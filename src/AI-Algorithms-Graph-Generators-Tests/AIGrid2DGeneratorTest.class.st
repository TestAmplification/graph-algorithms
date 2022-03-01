"
A MalGrid2DGeneratorTest is a test class for testing the behavior of MalGrid2DGenerator
"
Class {
	#name : #AIGrid2DGeneratorTest,
	#superclass : #TestCase,
	#category : #'AI-Algorithms-Graph-Generators-Tests'
}

{ #category : #tests }
AIGrid2DGeneratorTest >> testNumberOfNodes [
	| g |
	g := AIGrid2DGenerator new.
	g
		height: 10;
		width: 5;
		neighborhood: #vonNeumann.
	g run.
	self assert: g nodes size equals: 50
]

{ #category : #'as yet unclassified' }
AIGrid2DGeneratorTest >> testNumberOfNodes_amp [

	"SmallAmp has derived this test from `AIGrid2DGeneratorTest>>#testNumberOfNodes` by regenerating its assertions.
	This test can cover these parts:
	*	In `AIGrid2DGenerator>> #run` from 43 to 158:
		Operation: ReplaceIfTrueIfFalseReceiverWithFalseOperator
		Code snippet: `neighborhood == #vonNeumann
	ifTrue: [ self buildVonNeumannNeighorhood ]
	ifFalse: [ self buildMooreNeighborhood ]`
		Dynamic state: {#neighborhood->#vonNeumann}
		Mutant id: ReplaceIfTrueIfFalseReceiverWithFalseOperator#AIGrid2DGenerator#run#43#158
	*	In `AIGrid2DGenerator>> #run` from 43 to 69:
		Operation: ReplaceIdentityWithNegationOfIdentity
		Code snippet: `neighborhood == #vonNeumann`
		Dynamic state: {#neighborhood->#vonNeumann}
		Mutant id: ReplaceIdentityWithNegationOfIdentity#AIGrid2DGenerator#run#43#69
	*	In `AIGrid2DGenerator>> #buildVonNeumannNeighorhood` from 445 to 453:
		Operation: ReplaceMinusWithPlusMutantOperator
		Code snippet: `width - 1`
		Dynamic state: {#width->5}
		Mutant id: ReplaceMinusWithPlusMutantOperator#AIGrid2DGenerator#buildVonNeumannNeighorhood#445#453
"

	<madeBySmallAmp>
	| g |
	g := AIGrid2DGenerator new.
	g := g
		     height: 10;
		     width: 5;
		     neighborhood: #vonNeumann.
	g run.
	self assert: (g graph at: 2) size equals: 85
]
