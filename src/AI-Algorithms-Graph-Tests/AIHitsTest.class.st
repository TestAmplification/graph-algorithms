Class {
	#name : #AIHitsTest,
	#superclass : #TestCase,
	#instVars : [
		'hits'
	],
	#category : #'AI-Algorithms-Graph-Tests-Tests'
}

{ #category : #running }
AIHitsTest >> setUp [

	super setUp.
	hits := AIHits new
]

{ #category : #tests }
AIHitsTest >> testComplexCycle [

	AIGraphFixture complexCycleGraph: hits.
	hits run.
	hits nodes do: [ :node | 
		self deny: node hub equals: 1.
		self deny: node auth equals: 1 ]
]

{ #category : #tests }
AIHitsTest >> testComplexWCycle [

	AIGraphFixture complexWeightedGraph: hits.
	hits run.
	hits nodes do: [ :node | 
		self deny: node hub equals: 1.
		self deny: node auth equals: 1 ]
]

{ #category : #tests }
AIHitsTest >> testCycle [

	AIGraphFixture cycleGraph: hits.
	hits run.
	hits nodes do: [ :node | 
		self deny: node hub equals: 1.
		self deny: node auth equals: 1 ]
]

{ #category : #tests }
AIHitsTest >> testGraphForHits [

	AIGraphFixture simpleGraphForHits: hits.
	hits k: 3.
	hits run.
	hits nodes do: [ :node | 
		self deny: node hub equals: 0.
		self deny: node auth equals: 0 ]
]

{ #category : #tests }
AIHitsTest >> testNestedCycle [

	AIGraphFixture nestedCycleGraph: hits.
	hits run.
	hits nodes do: [ :node | 
		self deny: node hub equals: 1.
		self deny: node auth equals: 1 ]
]

{ #category : #tests }
AIHitsTest >> testSimple [

	AIGraphFixture simpleGraph: hits.
	hits run.
	hits nodes do: [ :node | 
		self deny: node hub equals: 1.
		self deny: node auth equals: 1 ]
]

{ #category : #tests }
AIHitsTest >> testSimpleW [

	AIGraphFixture simpleWeightedGraph: hits.
	hits run.
	hits nodes do: [ :node | 
		self deny: node hub equals: 1.
		self deny: node auth equals: 1 ]
]

{ #category : #'as yet unclassified' }
AIHitsTest >> testSimple_amp [

	"SmallAmp has derived this test from `AIHitsTest>>#testSimple` by regenerating its assertions.
	This test can cover these parts:
	*	In `AIHits>> #normalizeScores` from 409 to 423:
		Operation: ReplaceDivisionWithMultiplicationMutantOperator
		Code snippet: `n hub / hubNorm`
		Dynamic state: {#hubNorm->8.131779027517391e97}
		Mutant id: ReplaceDivisionWithMultiplicationMutantOperator#AIHits#normalizeScores#409#423
	*	In `AIHits>> #normalizeScores` from 267 to 306:
		Operation: ReplaceIfTrueWithIfFalseMutantOperator
		Code snippet: `authNorm = 0 ifTrue: [ authNorm := 1.0 ]`
		Dynamic state: {#authNorm->2.4046797148842156}
		Mutant id: ReplaceIfTrueWithIfFalseMutantOperator#AIHits#normalizeScores#267#306
	*	In `AIHits>> #computeHubsFor:` from 96 to 110:
		Operation: ReplacePlusWithMinusMutantOperator
		Code snippet: `sum + node auth`
		Dynamic state: {#sum->0}
		Mutant id: ReplacePlusWithMinusMutantOperator#AIHits#computeHubsFor:#96#110
	*	In `AIHits>> #run` from 50 to 103:
		Operation: ReplaceDoBlockWithEmptyBlockOperator
		Code snippet: `nodes do: [ :node | self computeAuthoritiesFor: node ]`
		Dynamic state: nil
		Mutant id: ReplaceDoBlockWithEmptyBlockOperator#AIHits#run#50#103
	*	In `AIHits>> #normalizeScores` from 381 to 397:
		Operation: ReplaceDivisionWithMultiplicationMutantOperator
		Code snippet: `n auth / authNorm`
		Dynamic state: {#authNorm->2.4046797148842156}
		Mutant id: ReplaceDivisionWithMultiplicationMutantOperator#AIHits#normalizeScores#381#397
	*	In `AIHits>> #normalizeScores` from 267 to 278:
		Operation: ReplaceEqualWithNotEqualOperator
		Code snippet: `authNorm = 0`
		Dynamic state: {#authNorm->2.4046797148842156}
		Mutant id: ReplaceEqualWithNotEqualOperator#AIHits#normalizeScores#267#278
	*	In `AIHits>> #run` from 108 to 154:
		Operation: ReplaceDoBlockWithEmptyBlockOperator
		Code snippet: `nodes do: [ :node | self computeHubsFor: node ]`
		Dynamic state: nil
		Mutant id: ReplaceDoBlockWithEmptyBlockOperator#AIHits#run#108#154
	*	In `AIHits>> #normalizeScores` from 267 to 306:
		Operation: ReplaceIfTrueReceiverWithTrueOperator
		Code snippet: `authNorm = 0 ifTrue: [ authNorm := 1.0 ]`
		Dynamic state: {#authNorm->1.4142135623724519}
		Mutant id: ReplaceIfTrueReceiverWithTrueOperator#AIHits#normalizeScores#267#306
"

	<madeBySmallAmp>
	AIGraphFixture simpleGraph: hits.
	hits run.
	self
		assert: (hits nodes at: 1) hub equals: 6.743495761741511e-7;
		assert: (hits nodes at: 2) auth equals: 9.536743164058163e-7.
	hits nodes
]
