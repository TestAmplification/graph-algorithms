Class {
	#name : #AIGrid3DGeneratorTest,
	#superclass : #TestCase,
	#category : #'AI-Algorithms-Graph-Generators-Tests'
}

{ #category : #tests }
AIGrid3DGeneratorTest >> testNumberOfNodes [
	| g |
	g := AIGrid3DGenerator new.
	g
		length: 3;
		height: 3;
		width: 3;
		neighborhood: #vonNeumann.
	g run.
	self assert: g nodes size equals: 27
]

{ #category : #'as yet unclassified' }
AIGrid3DGeneratorTest >> testNumberOfNodes_amp [

	<madeBySmallAmp>
	| g |
	'SmallAmp has derived this test from `AIGrid3DGeneratorTest>>#testNumberOfNodes` by regenerating its assertions.
	This test can cover these parts:
	*	In `AIGrid3DGenerator>> #run` from 52 to 191:
		Operation: ReplaceIfTrueIfFalseReceiverWithFalseOperator
		Code snippet: `neighborhood == #vonNeumann
	ifTrue: [ self buildVonNeumannNeighorhood ]
	ifFalse: [ "self buildMooreNeighborhood""Not yet implemented" ]`
		Dynamic state: {#neighborhood->#vonNeumann}
		Mutant id: ReplaceIfTrueIfFalseReceiverWithFalseOperator#AIGrid3DGenerator#run#52#191
	*	In `AIGrid3DGenerator>> #buildVonNeumannNeighorhood` from 68 to 77:
		Operation: ReplaceMinusWithPlusMutantOperator
		Code snippet: `length - 1`
		Dynamic state: {#length->3}
		Mutant id: ReplaceMinusWithPlusMutantOperator#AIGrid3DGenerator#buildVonNeumannNeighorhood#68#77
	*	In `AIGrid3DGenerator>> #run` from 52 to 78:
		Operation: ReplaceIdentityWithNegationOfIdentity
		Code snippet: `neighborhood == #vonNeumann`
		Dynamic state: {#neighborhood->#vonNeumann}
		Mutant id: ReplaceIdentityWithNegationOfIdentity#AIGrid3DGenerator#run#52#78
'.
	g := AIGrid3DGenerator new.
	g := g
		     length: 3;
		     height: 3;
		     width: 3;
		     neighborhood: #vonNeumann.
	g run.
	self assert: (g graph at: 2) size equals: 54
]
