deal: array


	| d d2 hand1 hand2  pool  combinedh1 combinedh2 
	 returninghand  clubsroyal diamondsroyal heartsroyal diamondsarray clubsarray heartsarray spadesroyal spadesarray
	hand3 hand4  pool2 counter combinedh4 combinedh3 combinedt1 combinedt2 index clubscounter diamondscounter spadescounter heartscounter empty clubscounterH diamondscounterH spadescounterH heartscounterH comparecount count combinedfirstthree combined2firstthree
	max max2 combinedh7 combinedh8 empty2 sum sum2 repeat counter1 comparecount1 sum3 sum4|
	
 	Transcript clear.
	comparecount := 0.
	count := 0.
	repeat := 0.
	returninghand := OrderedCollection new.
	empty := OrderedCollection new.
	max := 0.
	max2 := 0.
	"indexing input"
	hand1 := OrderedCollection new.
	hand2 := OrderedCollection new.
	"hand1 - 2 values"
	hand1 add: (array at: 1); add: (array at: 3).
	hand2 add: (array at: 2); add: (array at: 4).
	"remaining 5 values in pool"
	pool := OrderedCollection new.
	pool add: (array at: 5); add: (array at: 6); add: (array at: 7); add: (array at: 8); add: (array at: 9).
	"combine hand1 with pool"
	combinedh1 := hand1 , pool.
	"combine hand2 with pool"
	combinedh2 := hand2 , pool.
	d := OrderedCollection new.
	d2 := OrderedCollection new.
	counter1 :=0.
	array do: [ :a | d add: a ].
	d doWithIndex: [ :a :i | 
		a == 1 ifTrue: [ d at: i put: 1].
		a == 2 ifTrue: [ d at: i put: 2 ].
		a == 3 ifTrue: [ d at: i put: 3 ].
		a == 4 ifTrue: [ d at: i put: 4 ].
		a == 5 ifTrue: [ d at: i put: 5 ].
		a == 6 ifTrue: [ d at: i put: 6 ].
		a == 7 ifTrue: [ d at: i put: 7 ].
		a == 8 ifTrue: [ d at: i put: 8 ].
		a == 9 ifTrue: [ d at: i put: 9 ].
		a == 10 ifTrue: [ d at: i put: 10 ].
		a == 11 ifTrue: [ d at: i put: 11 ].
		a == 12 ifTrue: [ d at: i put: 12 ].
		a == 13 ifTrue: [ d at: i put: 13 ].
		a == 14 ifTrue: [ d at: i put: 1 ].
		a == 15 ifTrue: [ d at: i put: 2 ].
		a == 16 ifTrue: [ d at: i put: 3 ].
		a == 17 ifTrue: [ d at: i put: 4 ].
		a == 18 ifTrue: [ d at: i put: 5 ].
		a == 19 ifTrue: [ d at: i put: 6 ].
		a == 20 ifTrue: [ d at: i put: 7 ].
		a == 21 ifTrue: [ d at: i put: 8 ].
		a == 22 ifTrue: [ d at: i put: 9 ].
		a == 23 ifTrue: [ d at: i put: 10 ].
		a == 24 ifTrue: [ d at: i put: 11 ].
		a == 25 ifTrue: [ d at: i put: 12 ].
		a == 26 ifTrue: [ d at: i put: 13 ].
		a == 27 ifTrue: [ d at: i put: 1 ].
		a == 28 ifTrue: [ d at: i put: 2 ].
		a == 29 ifTrue: [ d at: i put: 3 ].
		a == 30 ifTrue: [ d at: i put: 4 ].
		a == 31 ifTrue: [ d at: i put: 5 ].
		a == 32 ifTrue: [ d at: i put: 6 ].
		a == 33 ifTrue: [ d at: i put: 7 ].
		a == 34 ifTrue: [ d at: i put: 8 ].
		a == 35 ifTrue: [ d at: i put: 9 ].
		a == 36 ifTrue: [ d at: i put: 10 ].
		a == 37 ifTrue: [ d at: i put: 11 ].
		a == 38 ifTrue: [ d at: i put: 12 ].
		a == 39 ifTrue: [ d at: i put: 13 ].		
		a == 40 ifTrue: [ d at: i put: 1 ].
		a == 41 ifTrue: [ d at: i put: 2 ].
		a == 42 ifTrue: [ d at: i put: 3 ].
		a == 43 ifTrue: [ d at: i put: 4 ].
		a == 44 ifTrue: [ d at: i put: 5 ].
		a == 45 ifTrue: [ d at: i put: 6 ].
		a == 46 ifTrue: [ d at: i put: 7 ].
		a == 47 ifTrue: [ d at: i put: 8 ].
		a == 48 ifTrue: [ d at: i put: 9 ].
		a == 49 ifTrue: [ d at: i put: 10 ].
		a == 50 ifTrue: [ d at: i put: 11 ].
		a == 51 ifTrue: [ d at: i put: 12 ].
		a == 52 ifTrue: [ d at: i put: 13 ].			
		    ].
	array do: [ :a | d2 add: a ].
	d2 doWithIndex: [ :a :i | 
		a == 1 ifTrue: [ d2 at: i put: '1C' ].
		a == 2 ifTrue: [ d2 at: i put: '2C' ].
		a == 3 ifTrue: [ d2 at: i put: '3C' ].
		a == 4 ifTrue: [ d2 at: i put: '4C' ].
		a == 5 ifTrue: [ d2 at: i put: '5C' ].
		a == 6 ifTrue: [ d2 at: i put: '6C' ].
		a == 7 ifTrue: [ d2 at: i put: '7C' ].
		a == 8 ifTrue: [ d2 at: i put: '8C' ].
		a == 9 ifTrue: [ d2 at: i put: '9C' ].
		a == 10 ifTrue: [ d2 at: i put: '10C' ].
		a == 11 ifTrue: [ d2 at: i put: '11C' ].
		a == 12 ifTrue: [ d2 at: i put: '12C' ].
		a == 13 ifTrue: [ d2 at: i put: '13C' ].
		a == 14 ifTrue: [ d2 at: i put: '1D' ].
		a == 15 ifTrue: [ d2 at: i put: '2D' ].
		a == 16 ifTrue: [ d2 at: i put: '3D' ].
		a == 17 ifTrue: [ 	d2 at: i put: '4D' ].
		a == 18 ifTrue: [ d2 at: i put: '5D' ].
		a == 19 ifTrue: [ d2 at: i put: '6D' ].
		a == 20 ifTrue: [ d2 at: i put: '7D' ].
		a == 21 ifTrue: [ d2 at: i put: '8D' ].
		a == 22 ifTrue: [ d2 at: i put: '9D' ].
		a == 23 ifTrue: [ d2 at: i put: '10D' ].
		a == 24 ifTrue: [ d2 at: i put: '11D' ].
		a == 25 ifTrue: [ d2 at: i put: '12D' ].
		a == 26 ifTrue: [ d2 at: i put: '13D' ].
		a == 27 ifTrue: [ d2 at: i put: '1H' ].
		a == 28 ifTrue: [ d2 at: i put: '2H' ].
		a == 29 ifTrue: [ d2 at: i put: '3H' ].
		a == 30 ifTrue: [ d2 at: i put: '4H' ].
		a == 31 ifTrue: [ d2 at: i put: '5H' ].
		a == 32 ifTrue: [ d2 at: i put: '6H' ].
		a == 33 ifTrue: [ d2 at: i put: '7H' ].
		a == 34 ifTrue: [ d2 at: i put: '8H' ].
		a == 35 ifTrue: [ d2 at: i put: '9H' ].
		a == 36 ifTrue: [ d2 at: i put: '10H' ].
		a == 37 ifTrue: [ d2 at: i put: '11H' ].
		a == 38 ifTrue: [ d2 at: i put: '12H' ].
		a == 39 ifTrue: [ d2 at: i put: '13H' ].		
		a == 40 ifTrue: [ d2 at: i put: '1S' ].
		a == 41 ifTrue: [ d2 at: i put: '2S' ].
		a == 42 ifTrue: [ d2 at: i put: '3S' ].
		a == 43 ifTrue: [ d2 at: i put: '4S' ].
		a == 44 ifTrue: [ d2 at: i put: '5S' ].
		a == 45 ifTrue: [ d2 at: i put: '6S' ].
		a == 46 ifTrue: [ d2 at: i put: '7S' ].
		a == 47 ifTrue: [ d2 at: i put: '8S' ].
		a == 48 ifTrue: [ d2 at: i put: '9S' ].
		a == 49 ifTrue: [ d2 at: i put: '10S' ].
		a == 50 ifTrue: [ d2 at: i put: '11S' ].
		a == 51 ifTrue: [ d2 at: i put: '12S' ].
		a == 52 ifTrue: [ d2 at: i put: '13S' ].	
			].
	hand3 := OrderedCollection  new.
	hand4 := OrderedCollection  new.
	pool2 := OrderedCollection new.
	
	hand3 add: (d at: 1); add: (d at: 3).
	hand4 add: (d at: 2); add: (d at:4).
	pool2 add: (d at: 5); add: (d at: 6); add: (d at: 7); add: (d at: 8); add: (d at: 9).
	
	combinedh3 := OrderedCollection new.
	combinedh4 := OrderedCollection new.
	combinedh3 := hand3, pool2.
	combinedh4 := hand4, pool2.
	combinedt1 := OrderedCollection new.
	combinedt2 := OrderedCollection new.
	
	combinedt1 add: (d2  at: 1); add: (d2  at: 3);  add: (d2  at: 5);add: (d2  at: 6); add: (d2  at: 7); add: (d2  at: 8); add: (d2  at: 9).
	combinedt2 add: (d2  at: 2); add: (d2  at: 4); add: (d2  at: 5);add: (d2  at: 6); add: (d2  at: 7); add: (d2  at: 8); add: (d2  at: 9).
	counter := 0.
	index := 0.
	
	"high card"

	
	sum := SortedCollection new.
	sum2 := SortedCollection new.
	
	combinedfirstthree := OrderedCollection new.
	combined2firstthree := OrderedCollection new.
	
	combinedfirstthree add: (combinedh1 at: 1); add: (combinedh1 at: 2).
	combined2firstthree add: (combinedh2 at: 1); add: (combinedh2 at: 2).

	max := combinedfirstthree  inject: 0 into: [:a :c | (a > c) ifTrue: [a] ifFalse: [c]].
	max2 := combined2firstthree  inject: 0 into: [:a :c | (a > c) ifTrue: [a] ifFalse: [c]].
	
	combinedh1 := combinedh1 asSortedCollection.
	combinedh2 := combinedh2 asSortedCollection.
	
	sum add: (combinedh1 at: 3); add: (combinedh1 at: 4); add: (combinedh1 at: 5); add: (combinedh1 at: 6); add: (combinedh1 at: 7).
	combined2firstthree add: (combinedh2 at: 1); add: (combinedh2 at: 2); add: (combinedh2 at: 3).
	
	sum2 add: (combinedh2 at: 3); add: (combinedh2 at: 4); add: (combinedh2 at: 5); add: (combinedh2 at: 6); add: (combinedh2 at: 7).
	combined2firstthree add: (combinedh2 at: 1); add: (combinedh2 at: 2); add: (combinedh2 at: 3).
	
	sum3 := OrderedCollection new.
	sum4 := OrderedCollection new.
	sum do: [ :a | sum3 add: a ].
	sum3 doWithIndex: [ :a :i | 
		a == 1 ifTrue: [ sum3 at: i put: '1C' ].
		a == 2 ifTrue: [ sum3 at: i put: '2C' ].
		a == 3 ifTrue: [ sum3 at: i put: '3C' ].
		a == 4 ifTrue: [ sum3 at: i put: '4C' ].
		a == 5 ifTrue: [ sum3 at: i put: '5C' ].
		a == 6 ifTrue: [ sum3 at: i put: '6C' ].
		a == 7 ifTrue: [ sum3 at: i put: '7C' ].
		a == 8 ifTrue: [ sum3 at: i put: '8C' ].
		a == 9 ifTrue: [ sum3 at: i put: '9C' ].
		a == 10 ifTrue: [ sum3 at: i put: '10C' ].
		a == 11 ifTrue: [ sum3 at: i put: '11C' ].
		a == 12 ifTrue: [ sum3 at: i put: '12C' ].
		a == 13 ifTrue: [ sum3 at: i put: '13C' ].
		a == 14 ifTrue: [ sum3 at: i put: '1D' ].
		a == 15 ifTrue: [ sum3 at: i put: '2D' ].
		a == 16 ifTrue: [ sum3 at: i put: '3D' ].
		a == 17 ifTrue: [ 	sum3 at: i put: '4D' ].
		a == 18 ifTrue: [ sum3 at: i put: '5D' ].
		a == 19 ifTrue: [ sum3 at: i put: '6D' ].
		a == 20 ifTrue: [ sum3 at: i put: '7D' ].
		a == 21 ifTrue: [ sum3 at: i put: '8D' ].
		a == 22 ifTrue: [ sum3 at: i put: '9D' ].
		a == 23 ifTrue: [ sum3 at: i put: '10D' ].
		a == 24 ifTrue: [ sum3 at: i put: '11D' ].
		a == 25 ifTrue: [ sum3 at: i put: '12D' ].
		a == 26 ifTrue: [ sum3 at: i put: '13D' ].
		a == 27 ifTrue: [ sum3 at: i put: '1H' ].
		a == 28 ifTrue: [ sum3 at: i put: '2H' ].
		a == 29 ifTrue: [ sum3 at: i put: '3H' ].
		a == 30 ifTrue: [ sum3 at: i put: '4H' ].
		a == 31 ifTrue: [ sum3 at: i put: '5H' ].
		a == 32 ifTrue: [ sum3 at: i put: '6H' ].
		a == 33 ifTrue: [ sum3 at: i put: '7H' ].
		a == 34 ifTrue: [ sum3 at: i put: '8H' ].
		a == 35 ifTrue: [ sum3 at: i put: '9H' ].
		a == 36 ifTrue: [ sum3 at: i put: '10H' ].
		a == 37 ifTrue: [ sum3 at: i put: '11H' ].
		a == 38 ifTrue: [ sum3 at: i put: '12H' ].
		a == 39 ifTrue: [ sum3 at: i put: '13H' ].		
		a == 40 ifTrue: [ sum3 at: i put: '1S' ].
		a == 41 ifTrue: [ sum3 at: i put: '2S' ].
		a == 42 ifTrue: [ sum3 at: i put: '3S' ].
		a == 43 ifTrue: [ sum3 at: i put: '4S' ].
		a == 44 ifTrue: [ sum3 at: i put: '5S' ].
		a == 45 ifTrue: [ sum3 at: i put: '6S' ].
		a == 46 ifTrue: [ sum3 at: i put: '7S' ].
		a == 47 ifTrue: [ sum3 at: i put: '8S' ].
		a == 48 ifTrue: [ sum3 at: i put: '9S' ].
		a == 49 ifTrue: [ sum3 at: i put: '10S' ].
		a == 50 ifTrue: [ sum3 at: i put: '11S' ].
		a == 51 ifTrue: [ sum3 at: i put: '12S' ].
		a == 52 ifTrue: [ sum3 at: i put: '13S' ].	
			].
	sum2 do: [ :a | sum4 add: a ].
	sum4 doWithIndex: [ :a :i | 
		a == 1 ifTrue: [ sum4 at: i put: '1C' ].
		a == 2 ifTrue: [ sum4 at: i put: '2C' ].
		a == 3 ifTrue: [ sum4 at: i put: '3C' ].
		a == 4 ifTrue: [ sum4 at: i put: '4C' ].
		a == 5 ifTrue: [ sum4 at: i put: '5C' ].
		a == 6 ifTrue: [ sum4 at: i put: '6C' ].
		a == 7 ifTrue: [ sum4 at: i put: '7C' ].
		a == 8 ifTrue: [ sum4 at: i put: '8C' ].
		a == 9 ifTrue: [ sum4 at: i put: '9C' ].
		a == 10 ifTrue: [ sum4 at: i put: '10C' ].
		a == 11 ifTrue: [ sum4 at: i put: '11C' ].
		a == 12 ifTrue: [ sum4 at: i put: '12C' ].
		a == 13 ifTrue: [ sum4 at: i put: '13C' ].
		a == 14 ifTrue: [ sum4 at: i put: '1D' ].
		a == 15 ifTrue: [ sum4 at: i put: '2D' ].
		a == 16 ifTrue: [ sum4 at: i put: '3D' ].
		a == 17 ifTrue: [ 	sum4 at: i put: '4D' ].
		a == 18 ifTrue: [ sum4 at: i put: '5D' ].
		a == 19 ifTrue: [ sum4 at: i put: '6D' ].
		a == 20 ifTrue: [ sum4 at: i put: '7D' ].
		a == 21 ifTrue: [ sum4 at: i put: '8D' ].
		a == 22 ifTrue: [ sum4 at: i put: '9D' ].
		a == 23 ifTrue: [ sum4 at: i put: '10D' ].
		a == 24 ifTrue: [ sum4 at: i put: '11D' ].
		a == 25 ifTrue: [ sum4 at: i put: '12D' ].
		a == 26 ifTrue: [ sum4 at: i put: '13D' ].
		a == 27 ifTrue: [ sum4 at: i put: '1H' ].
		a == 28 ifTrue: [ sum4 at: i put: '2H' ].
		a == 29 ifTrue: [ sum4 at: i put: '3H' ].
		a == 30 ifTrue: [ sum4 at: i put: '4H' ].
		a == 31 ifTrue: [ sum4 at: i put: '5H' ].
		a == 32 ifTrue: [ sum4 at: i put: '6H' ].
		a == 33 ifTrue: [ sum4 at: i put: '7H' ].
		a == 34 ifTrue: [ sum4 at: i put: '8H' ].
		a == 35 ifTrue: [ sum4 at: i put: '9H' ].
		a == 36 ifTrue: [ sum4 at: i put: '10H' ].
		a == 37 ifTrue: [ sum4 at: i put: '11H' ].
		a == 38 ifTrue: [ sum4 at: i put: '12H' ].
		a == 39 ifTrue: [ sum4 at: i put: '13H' ].		
		a == 40 ifTrue: [ sum4 at: i put: '1S' ].
		a == 41 ifTrue: [ sum4 at: i put: '2S' ].
		a == 42 ifTrue: [ sum4 at: i put: '3S' ].
		a == 43 ifTrue: [ sum4 at: i put: '4S' ].
		a == 44 ifTrue: [ sum4 at: i put: '5S' ].
		a == 45 ifTrue: [ sum4 at: i put: '6S' ].
		a == 46 ifTrue: [ sum4 at: i put: '7S' ].
		a == 47 ifTrue: [ sum4 at: i put: '8S' ].
		a == 48 ifTrue: [ sum4 at: i put: '9S' ].
		a == 49 ifTrue: [ sum4 at: i put: '10S' ].
		a == 50 ifTrue: [ sum4 at: i put: '11S' ].
		a == 51 ifTrue: [ sum4 at: i put: '12S' ].
		a == 52 ifTrue: [ sum4 at: i put: '13S' ].	
			].
	
	( max > max2) ifTrue: [ returninghand := sum3 asArray  ].
	( max < max2) ifTrue: [ returninghand := sum4 asArray  ].
	

	"pair"

	((combinedh3 occurrencesOf: 1) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 2) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 3) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 4) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 5) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 6) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 7) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 8) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 9) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 10) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 11) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 12) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 13) == 2) ifTrue:[counter1 := counter1 + 2].

	((combinedh4 occurrencesOf: 1) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 2) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 3) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 4) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 5) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 6) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 7) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 8) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 9) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 10) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 11) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 12) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 13) == 2) ifTrue:[counter := counter + 2].
	
	
	counter1 == 2 ifTrue: [  
	((combinedh3 occurrencesOf: 1) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 1). combinedh3 removeAt: (combinedh3 indexOf: 1)].
	((combinedh3 occurrencesOf: 2) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 2). combinedh3 removeAt: (combinedh3 indexOf: 2)].
	((combinedh3 occurrencesOf: 3) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 3). combinedh3 removeAt: (combinedh3 indexOf: 3)].
	((combinedh3 occurrencesOf: 4) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 4). combinedh3 removeAt: (combinedh3 indexOf: 4)].
	((combinedh3 occurrencesOf: 5) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 5). combinedh3 removeAt: (combinedh3 indexOf: 5)].
	((combinedh3 occurrencesOf: 6) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 6). combinedh3 removeAt: (combinedh3 indexOf: 6)].
	((combinedh3 occurrencesOf: 7) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 7). combinedh3 removeAt: (combinedh3 indexOf: 7)].
	((combinedh3 occurrencesOf: 8) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 8). combinedh3 removeAt: (combinedh3 indexOf: 8)].
	((combinedh3 occurrencesOf: 9) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 9). combinedh3 removeAt: (combinedh3 indexOf: 9)].
	((combinedh3 occurrencesOf: 10) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 10). combinedh3 removeAt: (combinedh3 indexOf: 10)].
	((combinedh3 occurrencesOf: 11) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 11). combinedh3 removeAt: (combinedh3 indexOf: 11)].
	((combinedh3 occurrencesOf: 12) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 12). combinedh3 removeAt: (combinedh3 indexOf: 12)].
	((combinedh3 occurrencesOf: 13) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 13). combinedh3 removeAt: (combinedh3 indexOf: 13)]
	].

	counter == 2 ifTrue: [  
	((combinedh4 occurrencesOf: 1) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 1). combinedh4 removeAt: (combinedh4 indexOf: 1)].
	((combinedh4 occurrencesOf: 2) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 2). combinedh4 removeAt: (combinedh4 indexOf: 2)].
	((combinedh4 occurrencesOf: 3) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 3). combinedh4 removeAt: (combinedh4 indexOf: 3)].
	((combinedh4 occurrencesOf: 4) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 4). combinedh4 removeAt: (combinedh4 indexOf: 4)].
	((combinedh4 occurrencesOf: 5) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 5). combinedh4 removeAt: (combinedh4 indexOf: 5)].
	((combinedh4 occurrencesOf: 6) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 6). combinedh4 removeAt: (combinedh4 indexOf: 6)].
	((combinedh4 occurrencesOf: 7) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 7). combinedh4 removeAt: (combinedh4 indexOf: 7)].
	((combinedh4 occurrencesOf: 8) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 8). combinedh4 removeAt: (combinedh4 indexOf: 8)].
	((combinedh4 occurrencesOf: 9) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 9). combinedh4 removeAt: (combinedh4 indexOf: 9)].
	((combinedh4 occurrencesOf: 10) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 10). combinedh4 removeAt: (combinedh4 indexOf: 10)].
	((combinedh4 occurrencesOf: 11) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 11). combinedh4 removeAt: (combinedh4 indexOf: 11)].
	((combinedh4 occurrencesOf: 12) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 12). combinedh4 removeAt: (combinedh4 indexOf: 12)].
	((combinedh4 occurrencesOf: 13) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 13). combinedh4 removeAt: (combinedh4 indexOf: 13)]
	].
	
	comparecount := counter + counter1.

	max := hand1 inject: 0 into: [:a :c | (a > c)                  
   ifTrue: [a]
   ifFalse: [c]].

	max2 := hand2 inject: 0 into: [:a :c | (a > c)                  
   ifTrue: [a]
   ifFalse: [c]].

	
	((combinedh3 = combinedh4) and: (max > max2 ))ifTrue: [ returninghand := combinedt1 asArray ].
	((combinedh3 = combinedh4) and: (max < max2 ))ifTrue: [ returninghand := combinedt2 asArray ].
	
	
	((combinedh3 = combinedh4) and: (combinedh3 includes: 1))ifTrue: [ returninghand := combinedt1 asArray ].
	((combinedh3 = combinedh4) and: (combinedh4 includes: 1 ))ifTrue: [ returninghand := combinedt2 asArray ].
	
	(counter == 2) ifTrue:[returninghand := combinedt2 asArray].
	(counter1 == 2) ifTrue:[returninghand := combinedt1 asArray].

	(comparecount == 4 and: (combinedh4 at: 1) > (combinedh3 at:1)) ifTrue: [ returninghand := combinedt2 asArray ].
	(comparecount == 4 and: (combinedh4 at: 1) < (combinedh3 at:1)) ifTrue: [ returninghand := combinedt1 asArray ].
	
	((comparecount == 4 and: (combinedh3 includes: 1)) ifTrue: [ returninghand := combinedt1 asArray ]).
	((comparecount == 4 and: (combinedh4 includes: 1)) ifTrue: [ returninghand := combinedt2 asArray ]).

	counter := 0.
	counter1 := 0.
	comparecount := 0.
	max := 0.
	max2 := 0.
	
	"two pair"
	combinedh3 := OrderedCollection new.
	combinedh4 := OrderedCollection new.
	combinedh3 := hand3, pool2.
	combinedh4 := hand4, pool2.
	combinedt1 := OrderedCollection new.
	combinedt2 := OrderedCollection new.
	
	combinedt1 add: (d2  at: 1); add: (d2  at: 3);  add: (d2  at: 5);add: (d2  at: 6); add: (d2  at: 7); add: (d2  at: 8); add: (d2  at: 9).
	combinedt2 add: (d2  at: 2); add: (d2  at: 4); add: (d2  at: 5);add: (d2  at: 6); add: (d2  at: 7); add: (d2  at: 8); add: (d2  at: 9).
	counter := 0.
	index := 0.
	counter1 :=0.
	
	((combinedh3 occurrencesOf: 1) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 2) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 3) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 4) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 5) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 6) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 7) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 8) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 9) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 10) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 11) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 12) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 13) == 2) ifTrue:[counter1 := counter1 + 2].
	
	((combinedh3 occurrencesOf: 1) == 3) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 2) == 3) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 3) == 3) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 4) == 3) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 5) == 3) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 6) == 3) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 7) == 3) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 8) == 3) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 9) == 3) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 10) == 3) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 11) == 3) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 12) == 3) ifTrue:[counter1 := counter1 + 2].
	((combinedh3 occurrencesOf: 13) == 3) ifTrue:[counter1 := counter1 + 2].

	((combinedh4 occurrencesOf: 1) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 2) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 3) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 4) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 5) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 6) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 7) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 8) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 9) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 10) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 11) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 12) == 2) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 13) == 2) ifTrue:[counter := counter + 2].
	
	((combinedh4 occurrencesOf: 1) == 3) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 2) == 3) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 3) == 3) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 4) == 3) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 5) == 3) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 6) == 3) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 7) == 3) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 8) == 3) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 9) == 3) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 10) == 3) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 11) == 3) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 12) == 3) ifTrue:[counter := counter + 2].
	((combinedh4 occurrencesOf: 13) == 3) ifTrue:[counter := counter + 2].
	
	
	counter1 == 4 ifTrue: [  
	((combinedh3 occurrencesOf: 1) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 1). combinedh3 removeAt: (combinedh3 indexOf: 1)].
	((combinedh3 occurrencesOf: 2) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 2). combinedh3 removeAt: (combinedh3 indexOf: 2)].
	((combinedh3 occurrencesOf: 3) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 3). combinedh3 removeAt: (combinedh3 indexOf: 3)].
	((combinedh3 occurrencesOf: 4) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 4). combinedh3 removeAt: (combinedh3 indexOf: 4)].
	((combinedh3 occurrencesOf: 5) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 5). combinedh3 removeAt: (combinedh3 indexOf: 5)].
	((combinedh3 occurrencesOf: 6) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 6). combinedh3 removeAt: (combinedh3 indexOf: 6)].
	((combinedh3 occurrencesOf: 7) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 7). combinedh3 removeAt: (combinedh3 indexOf: 7)].
	((combinedh3 occurrencesOf: 8) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 8). combinedh3 removeAt: (combinedh3 indexOf: 8)].
	((combinedh3 occurrencesOf: 9) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 9). combinedh3 removeAt: (combinedh3 indexOf: 9)].
	((combinedh3 occurrencesOf: 10) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 10). combinedh3 removeAt: (combinedh3 indexOf: 10)].
	((combinedh3 occurrencesOf: 11) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 11). combinedh3 removeAt: (combinedh3 indexOf: 11)].
	((combinedh3 occurrencesOf: 12) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 12). combinedh3 removeAt: (combinedh3 indexOf: 12)].
	((combinedh3 occurrencesOf: 13) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 13). combinedh3 removeAt: (combinedh3 indexOf: 13)]
	].

	counter == 4 ifTrue: [  
	((combinedh4 occurrencesOf: 1) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 1). combinedh4 removeAt: (combinedh4 indexOf: 1)].
	((combinedh4 occurrencesOf: 2) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 2). combinedh4 removeAt: (combinedh4 indexOf: 2)].
	((combinedh4 occurrencesOf: 3) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 3). combinedh4 removeAt: (combinedh4 indexOf: 3)].
	((combinedh4 occurrencesOf: 4) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 4). combinedh4 removeAt: (combinedh4 indexOf: 4)].
	((combinedh4 occurrencesOf: 5) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 5). combinedh4 removeAt: (combinedh4 indexOf: 5)].
	((combinedh4 occurrencesOf: 6) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 6). combinedh4 removeAt: (combinedh4 indexOf: 6)].
	((combinedh4 occurrencesOf: 7) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 7). combinedh4 removeAt: (combinedh4 indexOf: 7)].
	((combinedh4 occurrencesOf: 8) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 8). combinedh4 removeAt: (combinedh4 indexOf: 8)].
	((combinedh4 occurrencesOf: 9) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 9). combinedh4 removeAt: (combinedh4 indexOf: 9)].
	((combinedh4 occurrencesOf: 10) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 10). combinedh4 removeAt: (combinedh4 indexOf: 10)].
	((combinedh4 occurrencesOf: 11) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 11). combinedh4 removeAt: (combinedh4 indexOf: 11)].
	((combinedh4 occurrencesOf: 12) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 12). combinedh4 removeAt: (combinedh4 indexOf: 12)].
	((combinedh4 occurrencesOf: 13) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 13). combinedh4 removeAt: (combinedh4 indexOf: 13)]
	].

	max := hand1 inject: 0 into: [:a :c | (a > c)                  
   ifTrue: [a]
   ifFalse: [c]].

	max2 := hand2 inject: 0 into: [:a :c | (a > c)                  
   ifTrue: [a]
   ifFalse: [c]].
	
	counter == 4 ifTrue:[returninghand := combinedt2 asArray].
	counter1 == 4 ifTrue:[returninghand := combinedt1 asArray].
	
	((counter == 4 and: counter1 == 4) and: (max > max2 ))ifTrue: [ returninghand := combinedt1 asArray ].
	((counter == 4 and: counter1 == 4) and: (max < max2 ))ifTrue: [ returninghand := combinedt2 asArray ].
	
	((counter == 4 and: counter1 == 4) and: (combinedh3 includes:1))ifTrue: [ returninghand := combinedt1 asArray ].
	((counter == 4 and: counter1 == 4) and: (combinedh4 includes:1))ifTrue: [ returninghand := combinedt2 asArray ].

	

	"three of a kind"
	
	counter:= 0.
	counter1 :=0.
	
	((combinedh3 occurrencesOf: 1) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 2) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 3) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 4) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 5) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 6) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 7) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 8) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 9) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 10) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 11) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 12) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 13) == 3) ifTrue:[counter := counter + 3].

		
	counter == 3 ifTrue: [  
	((combinedh3 occurrencesOf: 1) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 1). combinedh3 removeAt: (combinedh3 indexOf: 1)].
	((combinedh3 occurrencesOf: 2) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 2). combinedh3 removeAt: (combinedh3 indexOf: 2)].
	((combinedh3 occurrencesOf: 3) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 3). combinedh3 removeAt: (combinedh3 indexOf: 3)].
	((combinedh3 occurrencesOf: 4) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 4). combinedh3 removeAt: (combinedh3 indexOf: 4)].
	((combinedh3 occurrencesOf: 5) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 5). combinedh3 removeAt: (combinedh3 indexOf: 5)].
	((combinedh3 occurrencesOf: 6) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 6). combinedh3 removeAt: (combinedh3 indexOf: 6)].
	((combinedh3 occurrencesOf: 7) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 7). combinedh3 removeAt: (combinedh3 indexOf: 7)].
	((combinedh3 occurrencesOf: 8) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 8). combinedh3 removeAt: (combinedh3 indexOf: 8)].
	((combinedh3 occurrencesOf: 9) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 9). combinedh3 removeAt: (combinedh3 indexOf: 9)].
	((combinedh3 occurrencesOf: 10) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 10). combinedh3 removeAt: (combinedh3 indexOf: 10)].
	((combinedh3 occurrencesOf: 11) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 11). combinedh3 removeAt: (combinedh3 indexOf: 11)].
	((combinedh3 occurrencesOf: 12) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 12). combinedh3 removeAt: (combinedh3 indexOf: 12)]].
	
	((combinedh4 occurrencesOf: 1) == 3) ifTrue:[counter1 := counter1  + 3].
	((combinedh4 occurrencesOf: 2) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 3) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 4) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 5) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 6) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 7) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 8) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 9) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 10) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 11) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 12) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 13) == 3) ifTrue:[counter1 := counter1 + 3].

		
	counter1 == 3 ifTrue: [  
	((combinedh4 occurrencesOf: 1) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 1). combinedh4 removeAt: (combinedh4 indexOf: 1)].
	((combinedh4 occurrencesOf: 2) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 2). combinedh4 removeAt: (combinedh4 indexOf: 2)].
	((combinedh4 occurrencesOf: 3) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 3). combinedh4 removeAt: (combinedh4 indexOf: 3)].
	((combinedh4 occurrencesOf: 4) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 4). combinedh4 removeAt: (combinedh4 indexOf: 4)].
	((combinedh4 occurrencesOf: 5) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 5). combinedh4 removeAt: (combinedh4 indexOf: 5)].
	((combinedh4 occurrencesOf: 6) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 6). combinedh4 removeAt: (combinedh4 indexOf: 6)].
	((combinedh4 occurrencesOf: 7) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 7). combinedh4 removeAt: (combinedh4 indexOf: 7)].
	((combinedh4 occurrencesOf: 8) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 8). combinedh4 removeAt: (combinedh4 indexOf: 8)].
	((combinedh4 occurrencesOf: 9) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 9). combinedh4 removeAt: (combinedh4 indexOf: 9)].
	((combinedh4 occurrencesOf: 10) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 10). combinedh4 removeAt: (combinedh4 indexOf: 10)].
	((combinedh4 occurrencesOf: 11) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 11). combinedh4 removeAt: (combinedh4 indexOf: 11)].
	((combinedh4 occurrencesOf: 12) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 12). combinedh4 removeAt: (combinedh4 indexOf: 12)]].
	
	counter == 3 ifTrue:[returninghand := combinedt1 asArray].
	counter1 == 3 ifTrue:[returninghand := combinedt2 asArray].
	
	max := combinedh3  inject: 0 into: [:a :c | (a > c)                  
   ifTrue: [a]
   ifFalse: [c]].

	max2 := combinedh4  inject: 0 into: [:a :c | (a > c)                  
   ifTrue: [a]
   ifFalse: [c]].

	((counter == 3 and: counter1 == 3) and: (max > max2 ))ifTrue: [ returninghand := combinedt1 asArray ].
	((counter == 3 and: counter1 == 3) and: (max < max2 ))ifTrue: [ returninghand := combinedt2 asArray ].
	
	((counter == 3 and: counter1 == 3) and: (combinedh3 includes: 1 ))ifTrue: [ returninghand := combinedt1 asArray ].
	((counter == 3 and: counter1 == 3) and: (combinedh4 includes: 1 ))ifTrue: [ returninghand := combinedt2 asArray ].
	
	counter := 0.
	counter1 := 0.
	max := 0.
	max2 := 0.
	
		"straight"
	
	combinedh7 := SortedCollection new.
	combinedh8 := SortedCollection new.
	combinedh7 add: (d at: 1); add:(d at: 3); add: (d at:5); add: (d at:6);add: (d at:7);add: (d at:8);add: (d at:9).
	combinedh8 add: (d at: 2); add:(d at: 4); add: (d at:5); add: (d at:6);add: (d at:7);add: (d at:8);add: (d at:9).
	empty := OrderedCollection new.
	empty2 := OrderedCollection new.
	

	sum := combinedh7 copyFrom: 1 to: 5.
	(sum includesAll: #(1 2 3 4 5)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:1))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:2))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:3))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:4))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:5))).
		counter := counter + 1.
		].
	(sum includesAll: #(2 3 4 5 6)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:2))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:3))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:4))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:5))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:6))).
		counter := counter + 1.
		].
	(sum includesAll: #(3 4 5 6 7)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:3))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:4))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:5))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:6))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:7))).
		counter := counter + 1.
		].
	(sum includesAll: #(4 5 6 7 8)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:4))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:5))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:6))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:7))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:8))).
		counter := counter + 1.
		].
	(sum includesAll: #(5 6 7 8 9)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:5))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:6))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:7))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:8))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:9))).
		counter := counter + 1.
		].
	(sum includesAll: #(6 7 8 9 10)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:6))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:7))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:8))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:9))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:10))).
		counter := counter + 1.
		].	
	(sum includesAll: #(7 8 9 10 11)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:6))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:7))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:8))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:9))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:10))).
		counter := counter + 1.
		].	
	
	(sum includesAll: #(8 9 10 11 12)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:6))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:7))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:8))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:9))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:10))).
		counter := counter + 1.
		].	
	(sum includesAll: #(9 10 11 12 13)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:9))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:10))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:11))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:12))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:13))).
		counter := counter + 1.
		].
	
	sum := combinedh7 copyFrom: 2 to: 6.
	(sum includesAll: #(1 2 3 4 5)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:1))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:2))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:3))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:4))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:5))).
		counter := counter + 1.
		].
	
	(sum includesAll: #(2 3 4 5 6)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:2))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:3))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:4))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:5))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:6))).
		counter := counter + 1.
		].
	(sum includesAll: #(3 4 5 6 7)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:3))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:4))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:5))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:6))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:7))).
		counter := counter + 1.
		].
	(sum includesAll: #(4 5 6 7 8)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3  indexOf:4))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:5))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:6))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:7))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:8))).
		counter := counter + 1.
		].
	(sum includesAll: #(5 6 7 8 9)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3  indexOf:5))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:6))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:7))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:8))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:9))).
		counter := counter + 1.
		].
	(sum includesAll: #(6 7 8 9 10)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3  indexOf:6))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:7))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:8))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:9))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:10))).
		counter := counter + 1.
		].
	(sum includesAll: #(7 8 9 10 11)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3  indexOf:7))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:8))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:9))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:10))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:11))).
		counter := counter + 1.
		].
	(sum includesAll: #(8 9 10 11 12)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3  indexOf:8))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:9))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:10))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:11))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:12))).
		counter := counter + 1.
		].
	(sum includesAll: #(9 10 11 12 13)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh7 indexOf:9))).
		empty2 add: (combinedt1 at: ((combinedh7 indexOf:10))).
		empty2 add: (combinedt1 at: ((combinedh7 indexOf:11))).
		empty2 add: (combinedt1 at: ((combinedh7 indexOf:12))).
		empty2 add: (combinedt1 at: ((combinedh7 indexOf:13))).
		counter := counter + 1.
		].
	
	sum := combinedh7 copyFrom: 3 to: 7.
	(sum includesAll: #(1 2 3 4 5)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:1))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:2))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:3))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:4))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:5))).
		counter := counter + 1.
		].
	(sum includesAll: #(2 3 4 5 6)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:1))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:2))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:3))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:4))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:5))).
		counter := counter + 1.
		].
	(sum includesAll: #(3 4 5 6 7)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:3))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:4))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:5))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:6))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:7))).
		counter := counter + 1.
		].
	(sum includesAll: #(4 5 6 7 8 9)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:4))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:5))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:6))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:7))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:8))).
		counter := counter + 1.
		].
	(sum includesAll: #(5 6 7 8 9)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:5))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:6))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:7))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:8))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:9))).
		counter := counter + 1.
		].
	(sum includesAll: #(6 7 8 9 10)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:6))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:7))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:8))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:9))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:10))).
		counter := counter + 1.
		].
	(sum includesAll: #(7 8 9 10 11)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:7))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:8))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:9))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:10))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:11))).
		counter := counter + 1.
		].
	(sum includesAll: #(8 9 10 11 12)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:8))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:9))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:10))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:11))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:12))).
		counter := counter + 1.
		].
	(sum includesAll: #(9 10 11 12 13)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:9))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:10))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:11))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:12))).
		empty2 add: (combinedt1 at: ((combinedh3 indexOf:13))).
		counter := counter + 1.
		].
	
	
	sum := combinedh8 copyFrom: 1 to: 5.
	(sum includesAll: #(1 2 3 4 5)) ifTrue: [   (combinedt2 at: ((combinedh4 indexOf:1))).
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:2))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:3))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:4))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:5))).
		counter1 := counter1 + 1.
		].
	(sum includesAll: #(2 3 4 5 6)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:2))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:3))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:4))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:5))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:6))).
		counter1 := counter1 + 1.
		].
	(sum includesAll: #(3 4 5 6 7)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:3))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:4))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:5))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:6))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:7))).
		counter1 := counter1 + 1.
		].
	(sum includesAll: #(4 5 6 7 8)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:4))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:5))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:6))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:7))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:8))).
		counter := counter + 1.
		].

	(sum includesAll: #(5 6 7 8 9)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:5))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:6))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:7))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:8))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:9))).
		counter := counter + 1.
		].
	(sum includesAll: #(6 7 8 9 10)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:6))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:7))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:8))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:9))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:10))).
		counter := counter + 1.
		].
	(sum includesAll: #(7 8 9 10 11)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:7))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:8))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:9))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:10))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:11))).
		counter := counter + 1.
		].
	(sum includesAll: #(8 9 10 11 12)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:8))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:9))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:10))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:11))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:12))).
		counter := counter + 1.
		].
	
	(sum includesAll: #(9 10 11 12 13)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:9))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:10))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:11))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:12))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:13))).
		counter1 := counter1 + 1.
		].

	
	sum := combinedh8 copyFrom: 2 to: 6.
	(sum includesAll: #(1 2 3 4 5)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:1))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:2))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:3))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:4))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:5))).
		counter1 := counter1 + 1.
		].
	(sum includesAll: #(2 3 4 5 6)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:2))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:3))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:4))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:5))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:6))).
		counter1 := counter1 + 1.
		].
	(sum includesAll: #(3 4 5 6 7)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:2))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:3))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:4))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:5))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:6))).
		counter1 := counter1 + 1.
		].
	(sum includesAll: #(4 5 6 7 8)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:2))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:3))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:4))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:5))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:6))).
		counter1 := counter1 + 1.
		].
	
	(sum includesAll: #(5 6 7 8 9)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:5))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:6))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:7))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:8))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:9))).
		counter1 := counter1 + 1.
		].
	(sum includesAll: #(6 7 8 9 10)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:5))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:6))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:7))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:8))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:9))).
		counter1 := counter1 + 1.
		].
	(sum includesAll: #(7 8 9 10 11)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:5))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:6))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:7))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:8))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:9))).
		counter1 := counter1 + 1.
		].
	(sum includesAll: #(8 9 10 11 12)) ifTrue: [
		empty := OrderedCollection new.
		empty add: (combinedt2 at: ((combinedh4 indexOf:5))).
		empty add: (combinedt2 at: ((combinedh4 indexOf:6))).
		empty add: (combinedt2 at: ((combinedh4 indexOf:7))).
		empty add: (combinedt2 at: ((combinedh4 indexOf:8))).
		empty add: (combinedt2 at: ((combinedh4 indexOf:9))).
		counter1 := counter1 + 1.
		].
	(sum includesAll: #(9 10 11 12 13)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:9))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:10))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:11))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:12))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:13))).
		counter1 := counter1 + 1.
		].
	
	sum := combinedh8 copyFrom: 3 to: 7.
	(sum includesAll: #(1 2 3 4 5)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:1))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:2))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:3))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:4))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:5))).
		counter1 := counter1 + 1.
		].
	(sum includesAll: #(2 3 4 5 6)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:2))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:3))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:4))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:5))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:6))).
		counter1 := counter1 + 1.
		].
	(sum includesAll: #(3 4 5 6 7)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:2))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:3))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:4))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:5))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:6))).
		counter1 := counter1 + 1.
		].
	(sum includesAll: #(4 5 6 7 8)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:2))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:3))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:4))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:5))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:6))).
		counter1 := counter1 + 1.
		].
	
	(sum includesAll: #(5 6 7 8 9)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:5))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:6))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:7))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:8))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:9))).
		counter1 := counter1 + 1.
		].
	(sum includesAll: #(6 7 8 9 10)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:6))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:7))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:8))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:9))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:10))).
		counter := counter + 1.
		].
	(sum includesAll: #(7 8 9 10 11)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:7))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:8))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:9))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:10))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:11))).
		counter := counter + 1.
		].
	(sum includesAll: #(8 9 10 11 12)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:8))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:9))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:10))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:11))).
		empty2 add: (combinedt2 at: ((combinedh3 indexOf:12))).
		counter := counter + 1.
		].

	(sum includesAll: #(9 10 11 12 13)) ifTrue: [
		empty2 := OrderedCollection new.
		empty2  add: (combinedt2 at: ((combinedh4 indexOf:9))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:10))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:11))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:12))).
		empty2 add: (combinedt2 at: ((combinedh4 indexOf:13))).
		counter1 := counter1 + 1.
		].

	
	counter == 1 ifTrue:  [returninghand := empty asArray].
	counter1 == 1 ifTrue:  [returninghand := empty2 asArray].
	
	max := combinedh7  inject: 0 into: [:a :c | (a > c)                  
   ifTrue: [a]
   ifFalse: [c]].

	max2 := combinedh8  inject: 0 into: [:a :c | (a > c)                  
   ifTrue: [a]
   ifFalse: [c]].

	((counter == 1 and: counter1 == 1) and: (max > max2 ))ifTrue: [ returninghand := empty asArray ].
	((counter == 1 and: counter1 == 1) and: (max < max2 ))ifTrue: [ returninghand := empty2 asArray ].
	
	((counter == 1 and: counter1 == 1) and: (combinedh3 includes: 1 ))ifTrue: [ returninghand := empty asArray ].
	((counter == 1 and: counter1 == 1) and: (combinedh4 includes: 1))ifTrue: [ returninghand := empty2 asArray ].
	
	counter := 0.
	counter1 := 0.
	max := 0.
	max2 := 0.
	
	"flush"
	
	combinedh3 := OrderedCollection new.
	combinedh4 := OrderedCollection new.
	combinedh3 := hand3, pool2.
	combinedh4 := hand4, pool2.
	combinedt1 := OrderedCollection new.
	combinedt2 := OrderedCollection new.
	
	combinedt1 add: (d2  at: 1); add: (d2  at: 3);  add: (d2  at: 5);add: (d2  at: 6); add: (d2  at: 7); add: (d2  at: 8); add: (d2  at: 9).
	combinedt2 add: (d2  at: 2); add: (d2  at: 4); add: (d2  at: 5);add: (d2  at: 6); add: (d2  at: 7); add: (d2  at: 8); add: (d2  at: 9).
	counter := 0.
	index := 0.
	counter1 :=0.
	empty := SortedCollection new.
	empty2 := SortedCollection new.
	
	empty := SortedCollection sortBlock: [:a :c | a > c].
	

	
	clubscounter := 0.
	diamondscounter := 0.
	heartscounter := 0.
	spadescounter := 0.
	
	clubscounterH := 0.
	diamondscounterH := 0.
	heartscounterH := 0.
	spadescounterH := 0.
	
	(combinedh1  includes: 1) ifTrue: [clubscounter := clubscounter +1].
	(combinedh1  includes: 2) ifTrue: [clubscounter := clubscounter +1].
	(combinedh1  includes: 3) ifTrue: [clubscounter := clubscounter +1].
	(combinedh1  includes: 4) ifTrue: [clubscounter := clubscounter +1].
	(combinedh1  includes: 5) ifTrue: [clubscounter := clubscounter +1].
	(combinedh1  includes: 6) ifTrue: [clubscounter := clubscounter +1].
	(combinedh1  includes: 7) ifTrue: [clubscounter := clubscounter +1].
	(combinedh1  includes: 8) ifTrue: [clubscounter := clubscounter +1].
	(combinedh1  includes: 9) ifTrue: [clubscounter := clubscounter +1].
	(combinedh1  includes: 10) ifTrue: [clubscounter := clubscounter +1].
	(combinedh1  includes: 11) ifTrue: [clubscounter := clubscounter +1].
	(combinedh1  includes: 12) ifTrue: [clubscounter := clubscounter +1].
	(combinedh1  includes: 13) ifTrue: [clubscounter := clubscounter +1].
	(combinedh1  includes: 14) ifTrue: [diamondscounter  := diamondscounter  +1].
	(combinedh1  includes: 15) ifTrue: [diamondscounter  := diamondscounter  +1].
	(combinedh1  includes: 16) ifTrue: [diamondscounter  := diamondscounter  +1].
	(combinedh1  includes: 17) ifTrue: [diamondscounter  := diamondscounter  +1].
	(combinedh1  includes: 18) ifTrue: [diamondscounter  := diamondscounter  +1].
	(combinedh1  includes: 19) ifTrue: [diamondscounter  := diamondscounter  +1].
	(combinedh1  includes: 20) ifTrue: [diamondscounter  := diamondscounter  +1].
	(combinedh1  includes: 21) ifTrue: [diamondscounter  := diamondscounter  +1].
	(combinedh1  includes: 22) ifTrue: [diamondscounter  := diamondscounter  +1].
	(combinedh1  includes: 23) ifTrue: [diamondscounter  := diamondscounter  +1].
	(combinedh1 includes: 24) ifTrue: [diamondscounter  := diamondscounter  +1].
	(combinedh1 includes: 25) ifTrue: [diamondscounter  := diamondscounter  +1].
	(combinedh1 includes: 26) ifTrue: [diamondscounter  := diamondscounter  +1].
	(combinedh1 includes: 27) ifTrue: [heartscounter  := heartscounter  +1].
	(combinedh1 includes: 28) ifTrue: [heartscounter  := heartscounter  +1].
	(combinedh1 includes: 29) ifTrue: [heartscounter  := heartscounter  +1].
	(combinedh1 includes: 30) ifTrue: [heartscounter  := heartscounter  +1].
	(combinedh1 includes: 31) ifTrue: [heartscounter  := heartscounter  +1].
	(combinedh1 includes: 32) ifTrue: [heartscounter  := heartscounter  +1].
	(combinedh1 includes: 33) ifTrue: [heartscounter  := heartscounter  +1].
	(combinedh1 includes: 34) ifTrue: [heartscounter  := heartscounter  +1].
	(combinedh1 includes: 35) ifTrue: [heartscounter  := heartscounter  +1].
	(combinedh1 includes: 36) ifTrue: [heartscounter  := heartscounter  +1].
	(combinedh1 includes: 37) ifTrue: [heartscounter  := heartscounter  +1].
	(combinedh1 includes: 38) ifTrue: [heartscounter  := heartscounter  +1].
	(combinedh1 includes: 39) ifTrue: [heartscounter  := heartscounter  +1].
	(combinedh1 includes: 40) ifTrue: [spadescounter  := spadescounter  +1].
	(combinedh1 includes: 41) ifTrue: [spadescounter  := spadescounter  +1].
	(combinedh1 includes: 42) ifTrue: [spadescounter  := spadescounter  +1].
	(combinedh1 includes: 43) ifTrue: [spadescounter  := spadescounter  +1].
	(combinedh1 includes: 44) ifTrue: [spadescounter  := spadescounter  +1].
	(combinedh1 includes: 45) ifTrue: [spadescounter  := spadescounter  +1].
	(combinedh1 includes: 46) ifTrue: [spadescounter  := spadescounter  +1].
	(combinedh1 includes: 47) ifTrue: [spadescounter  := spadescounter  +1].
	(combinedh1 includes: 48) ifTrue: [spadescounter  := spadescounter  +1].
	(combinedh1 includes: 49) ifTrue: [spadescounter  := spadescounter  +1].
	(combinedh1 includes: 50) ifTrue: [spadescounter  := spadescounter  +1].
	(combinedh1 includes: 51) ifTrue: [spadescounter  := spadescounter  +1].
	(combinedh1 includes: 52) ifTrue: [spadescounter  := spadescounter  +1].
	
	(combinedh2   includes: 1) ifTrue: [clubscounterH := clubscounterH +1].
	(combinedh2  includes: 2) ifTrue: [clubscounterH := clubscounterH +1].
	(combinedh2  includes: 3) ifTrue: [clubscounterH := clubscounterH +1].
	(combinedh2  includes: 4) ifTrue: [clubscounterH := clubscounterH +1].
	(combinedh2  includes: 5) ifTrue: [clubscounterH := clubscounterH +1].
	(combinedh2  includes: 6) ifTrue: [clubscounterH := clubscounterH +1].
	(combinedh2  includes: 7) ifTrue: [clubscounterH := clubscounterH +1].
	(combinedh2   includes: 8) ifTrue: [clubscounterH := clubscounterH +1].
	(combinedh2 includes: 9) ifTrue: [clubscounterH := clubscounterH +1].
	(combinedh2  includes: 10) ifTrue: [clubscounterH := clubscounterH +1].
	(combinedh2  includes: 11) ifTrue: [clubscounterH := clubscounterH +1].
	(combinedh2  includes: 12) ifTrue: [clubscounterH := clubscounterH +1].
	(combinedh2  includes: 13) ifTrue: [clubscounterH := clubscounterH +1].
	(combinedh2  includes: 14) ifTrue: [diamondscounterH  := diamondscounterH  +1].
	(combinedh2  includes: 15) ifTrue: [diamondscounterH  := diamondscounterH  +1].
	(combinedh2  includes: 16) ifTrue: [diamondscounterH  := diamondscounterH  +1].
	(combinedh2  includes: 17) ifTrue: [diamondscounterH  := diamondscounterH  +1].
	(combinedh2  includes: 18) ifTrue: [diamondscounterH  := diamondscounterH  +1].
	(combinedh2  includes: 19) ifTrue: [diamondscounterH  := diamondscounterH  +1].
	(combinedh2  includes: 20) ifTrue: [diamondscounterH  := diamondscounterH  +1].
	(combinedh2  includes: 21) ifTrue: [diamondscounterH  := diamondscounterH  +1].
	(combinedh2  includes: 22) ifTrue: [diamondscounterH  := diamondscounterH  +1].
	(combinedh2  includes: 23) ifTrue: [diamondscounterH  := diamondscounterH  +1].
	(combinedh2 includes: 24) ifTrue: [diamondscounterH  := diamondscounterH  +1].
	(combinedh2 includes: 25) ifTrue: [diamondscounterH  := diamondscounterH  +1].
	(combinedh2 includes: 26) ifTrue: [diamondscounterH  := diamondscounterH  +1].
	(combinedh2 includes: 27) ifTrue: [heartscounterH  := heartscounterH  +1].
	(combinedh2 includes: 28) ifTrue: [heartscounterH  := heartscounterH  +1].
	(combinedh2  includes: 29) ifTrue: [heartscounterH  := heartscounterH  +1].
	(combinedh2  includes: 30) ifTrue: [heartscounterH  := heartscounterH  +1].
	(combinedh2  includes: 31) ifTrue: [heartscounterH  := heartscounterH  +1].
	(combinedh2  includes: 32) ifTrue: [heartscounterH  := heartscounterH  +1].
	(combinedh2  includes: 33) ifTrue: [heartscounterH  := heartscounterH  +1].
	(combinedh2  includes: 34) ifTrue: [heartscounterH  := heartscounterH  +1].
	(combinedh2  includes: 35) ifTrue: [heartscounterH  := heartscounterH  +1].
	(combinedh2  includes: 36) ifTrue: [heartscounterH  := heartscounterH  +1].
	(combinedh2  includes: 37) ifTrue: [heartscounterH  := heartscounterH  +1].
	(combinedh2  includes: 38) ifTrue: [heartscounterH  := heartscounterH  +1].
	(combinedh2  includes: 39) ifTrue: [heartscounterH  := heartscounterH  +1].
	(combinedh2  includes: 40) ifTrue: [spadescounterH := spadescounterH  +1].
	(combinedh2  includes: 41) ifTrue: [spadescounterH  := spadescounterH  +1].
	(combinedh2  includes: 42) ifTrue: [spadescounterH  := spadescounterH  +1].
	(combinedh2  includes: 43) ifTrue: [spadescounterH  := spadescounterH  +1].
	(combinedh2  includes: 44) ifTrue: [spadescounterH  := spadescounterH  +1].
	(combinedh2  includes: 45) ifTrue: [spadescounterH  := spadescounterH  +1].
	(combinedh2  includes: 46) ifTrue: [spadescounterH  := spadescounterH  +1].
	(combinedh2 includes: 47) ifTrue: [spadescounterH  := spadescounterH  +1].
	(combinedh2  includes: 48) ifTrue: [spadescounterH  := spadescounterH  +1].
	(combinedh2  includes: 49) ifTrue: [spadescounterH  := spadescounterH  +1].
	(combinedh2  includes: 50) ifTrue: [spadescounterH  := spadescounterH  +1].
	(combinedh2  includes: 51) ifTrue: [spadescounterH := spadescounterH  +1].
	(combinedh2  includes: 52) ifTrue: [spadescounterH  := spadescounterH  +1].
	
	
	clubscounter >= 5 ifTrue: [ 
		(combinedh1 includes: 1) ifTrue: [ empty add: '1C' ].
		(combinedh1 includes: 2) ifTrue: [ empty add: '2C' ].
		(combinedh1 includes: 3) ifTrue: [ empty add: '3C' ].
		(combinedh1 includes: 4) ifTrue: [ empty add: '4C' ].
		(combinedh1 includes: 5) ifTrue: [ empty add: '5C' ].
		(combinedh1 includes: 6) ifTrue: [ empty add: '6C' ].
		(combinedh1 includes: 7) ifTrue: [ empty add: '7C' ].
		(combinedh1 includes: 8) ifTrue: [ empty add: '8C' ].
		(combinedh1 includes: 9) ifTrue: [ empty add: '9C' ].
		(combinedh1 includes: 10) ifTrue: [ empty add: '10C' ].
		(combinedh1 includes: 11) ifTrue: [ empty add: '11C' ].
		(combinedh1 includes: 12) ifTrue: [ empty add: '12C' ].
		(combinedh1 includes: 13) ifTrue: [ empty add: '13C' ].
		 ].
	
	

	diamondscounter  >= 5 ifTrue: [ 
		(combinedh1 includes: 14) ifTrue: [ empty add: '1D' ].
		(combinedh1 includes: 15) ifTrue: [ empty add: '2D' ].
		(combinedh1 includes: 16) ifTrue: [ empty add: '3D' ].
		(combinedh1 includes: 17) ifTrue: [ empty add: '4D' ].
		(combinedh1 includes: 18) ifTrue: [ empty add: '5D' ].
		(combinedh1 includes: 19) ifTrue: [ empty add: '6D' ].
		(combinedh1 includes: 20) ifTrue: [ empty add: '7D' ].
		(combinedh1 includes: 21) ifTrue: [ empty add: '8D' ].
		(combinedh1 includes: 22) ifTrue: [ empty add: '9D' ].
		(combinedh1 includes: 23) ifTrue: [ empty add: '10D' ].
		(combinedh1 includes: 24) ifTrue: [ empty add: '11D' ].
		(combinedh1 includes: 25) ifTrue: [ empty add: '12D' ].
		(combinedh1 includes: 26) ifTrue: [ empty add: '13D' ].
		 ].	
	
	heartscounter   >= 5 ifTrue: [ 
		(combinedh1 includes: 27) ifTrue: [ empty add: '1H' ].
		(combinedh1 includes: 28) ifTrue: [ empty add: '2H' ].
		(combinedh1 includes: 29) ifTrue: [ empty add: '3H' ].
		(combinedh1 includes: 30) ifTrue: [ empty add: '4H' ].
		(combinedh1 includes: 31) ifTrue: [ empty add: '5H' ].
		(combinedh1 includes: 32) ifTrue: [ empty add: '6H' ].
		(combinedh1 includes: 33) ifTrue: [ empty add: '7H' ].
		(combinedh1 includes: 34) ifTrue: [ empty add: '8H' ].
		(combinedh1 includes: 35) ifTrue: [ empty add: '9H' ].
		(combinedh1 includes: 36) ifTrue: [ empty add: '10H' ].
		(combinedh1 includes: 37) ifTrue: [ empty add: '11H' ].
		(combinedh1 includes: 38) ifTrue: [ empty add: '12H' ].
		(combinedh1 includes: 39) ifTrue: [ empty add: '13H' ].
		 ].	

	spadescounter  >= 5 ifTrue: [ 
		(combinedh1 includes: 40) ifTrue: [ empty add: '1S' ].
		(combinedh1 includes: 41) ifTrue: [ empty add: '2S' ].
		(combinedh1 includes: 42) ifTrue: [ empty add: '3S' ].
		(combinedh1 includes: 43) ifTrue: [ empty add: '4S' ].
		(combinedh1 includes: 44) ifTrue: [ empty add: '5S' ].
		(combinedh1 includes: 45) ifTrue: [ empty add: '6S' ].
		(combinedh1 includes: 46) ifTrue: [ empty add: '7S' ].
		(combinedh1 includes: 47) ifTrue: [ empty add: '8S' ].
		(combinedh1 includes: 48) ifTrue: [ empty add: '9S' ].
		(combinedh1 includes: 49) ifTrue: [ empty add: '10S' ].
		(combinedh1 includes: 50) ifTrue: [ empty add: '11S' ].
		(combinedh1 includes: 51) ifTrue: [ empty add: '12S' ].
		(combinedh1 includes: 52) ifTrue: [ empty add: '13S' ].
		 ].	

	clubscounterH >= 5 ifTrue: [ 
		(combinedh2 includes: 1) ifTrue: [ empty2 add: '1C' ].
		(combinedh2 includes: 2) ifTrue: [ empty2 add: '2C' ].
		(combinedh2 includes: 3) ifTrue: [ empty2 add: '3C' ].
		(combinedh2 includes: 4) ifTrue: [ empty2 add: '4C' ].
		(combinedh2 includes: 5) ifTrue: [ empty2 add: '5C' ].
		(combinedh2 includes: 6) ifTrue: [ empty2 add: '6C' ].
		(combinedh2 includes: 7) ifTrue: [ empty2 add: '7C' ].
		(combinedh2 includes: 8) ifTrue: [ empty2 add: '8C' ].
		(combinedh2 includes: 9) ifTrue: [ empty2 add: '9C' ].
		(combinedh2 includes: 10) ifTrue: [ empty2 add: '10C' ].
		(combinedh2 includes: 11) ifTrue: [ empty2 add: '11C' ].
		(combinedh2 includes: 12) ifTrue: [ empty2 add: '12C' ].
		(combinedh2 includes: 13) ifTrue: [ empty2 add: '13C' ].
		 ].

	diamondscounterH  >= 5 ifTrue: [ 
		(combinedh2 includes: 14) ifTrue: [ empty2 add: '1D' ].
		(combinedh2 includes: 15) ifTrue: [ empty2 add: '2D' ].
		(combinedh2 includes: 16) ifTrue: [ empty2 add: '3D' ].
		(combinedh2 includes: 17) ifTrue: [ empty2 add: '4D' ].
		(combinedh2 includes: 18) ifTrue: [ empty2 add: '5D' ].
		(combinedh2 includes: 19) ifTrue: [ empty2 add: '6D' ].
		(combinedh2 includes: 20) ifTrue: [ empty2 add: '7D' ].
		(combinedh2 includes: 21) ifTrue: [ empty2 add: '8D' ].
		(combinedh2 includes: 22) ifTrue: [ empty2 add: '9D' ].
		(combinedh2 includes: 23) ifTrue: [ empty2 add: '10D' ].
		(combinedh2 includes: 24) ifTrue: [ empty2 add: '11D' ].
		(combinedh2 includes: 25) ifTrue: [ empty2 add: '12D' ].
		(combinedh2 includes: 26) ifTrue: [ empty2 add: '13D' ].
		 ].	
	
	heartscounterH   >= 5 ifTrue: [ 
		(combinedh2 includes: 27) ifTrue: [ empty2 add: '1H' ].
		(combinedh2 includes: 28) ifTrue: [ empty2 add: '2H' ].
		(combinedh2 includes: 29) ifTrue: [ empty2 add: '3H' ].
		(combinedh2 includes: 30) ifTrue: [ empty2 add: '4H' ].
		(combinedh2 includes: 31) ifTrue: [ empty2 add: '5H' ].
		(combinedh2 includes: 32) ifTrue: [ empty2 add: '6H' ].
		(combinedh2 includes: 33) ifTrue: [ empty2 add: '7H' ].
		(combinedh2 includes: 34) ifTrue: [ empty2 add: '8H' ].
		(combinedh2 includes: 35) ifTrue: [ empty2 add: '9H' ].
		(combinedh2 includes: 36) ifTrue: [ empty2 add: '10H' ].
		(combinedh2 includes: 37) ifTrue: [ empty2 add: '11H' ].
		(combinedh2 includes: 38) ifTrue: [ empty2 add: '12H' ].
		(combinedh2 includes: 39) ifTrue: [ empty2 add: '13H' ].
		 ].	

	spadescounterH  >= 5 ifTrue: [ 
		(combinedh2 includes: 40) ifTrue: [ empty2 add: '1S' ].
		(combinedh2 includes: 41) ifTrue: [ empty2 add: '2S' ].
		(combinedh2 includes: 42) ifTrue: [ empty2 add: '3S' ].
		(combinedh2 includes: 43) ifTrue: [ empty2 add: '4S' ].
		(combinedh2 includes: 44) ifTrue: [ empty2 add: '5S' ].
		(combinedh2 includes: 45) ifTrue: [ empty2 add: '6S' ].
		(combinedh2 includes: 46) ifTrue: [ empty2 add: '7S' ].
		(combinedh2 includes: 47) ifTrue: [ empty2 add: '8S' ].
		(combinedh2 includes: 48) ifTrue: [ empty2 add: '9S' ].
		(combinedh2 includes: 49) ifTrue: [ empty2 add: '10S' ].
		(combinedh2 includes: 50) ifTrue: [ empty2 add: '11S' ].
		(combinedh2 includes: 51) ifTrue: [ empty2 add: '12S' ].
		(combinedh2 includes: 52) ifTrue: [ empty2 add: '13S' ].
		 ].	
		
		comparecount1 := 0.
		spadescounter == 5 ifTrue: [comparecount  := comparecount +1 ].
		heartscounter == 5 ifTrue: [ comparecount := comparecount +1].
		diamondscounter == 5 ifTrue: [ comparecount := comparecount +1].
		clubscounter >= 5 ifTrue: [ comparecount := comparecount +1 ].
	
		
		spadescounterH == 5 ifTrue: [comparecount1  := comparecount1 +1 ].
		heartscounterH == 5 ifTrue: [ comparecount1 := comparecount1 +1].
		diamondscounterH == 5 ifTrue: [ comparecount1 := comparecount1 +1].
		clubscounterH == 5 ifTrue: [ comparecount1 := comparecount1 +1 ].
		
		combinedfirstthree := OrderedCollection new.
		combined2firstthree := OrderedCollection new.
	
		combinedfirstthree add: (combinedh1 at: 1); add: (combinedh1 at: 2); add: (combinedh1 at: 3).
		combined2firstthree add: (combinedh2 at: 1); add: (combinedh2 at: 2); add: (combinedh2 at: 3).
		
		max := combinedfirstthree  inject: 0 into: [:a :c | (a > c) ifTrue: [a] ifFalse: [c]].
		max2 := combined2firstthree  inject: 0 into: [:a :c | (a > c) ifTrue: [a] ifFalse: [c]].
		
		(comparecount == 2 and: (max2 > max)) ifTrue: [ returninghand add: (combinedt1  at: 1); add: (combinedt1  at: 2); add: (combinedt1 		 at: 3); add: (combinedt1  at: 4);add: (combinedt1  at: 5).
			 ].
			
		(comparecount == 2 and: (max > max2)) ifTrue: [ returninghand add: (combinedt2 at: 1); add: (combinedt2  at: 2); add: (combinedt2  at: 3); add: (combinedt2  at: 4);add: (combinedt2  at: 5).
			 ].
		
		empty do: [ :a| count := count + 1].
		comparecount == 1 ifTrue:[returninghand := empty asArray].
		count := 0.
		
		empty do: [ :a| count := count + 1].
		comparecount1 == 1 ifTrue:[returninghand := empty2 asArray].
		count := 0.



	"full house"
	counter := 0.
	combinedfirstthree := 0.
	combined2firstthree := 0.

	
	((combinedh3 occurrencesOf: 1) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 2) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 3) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 4) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 5) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 6) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 7) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 8) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 9) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 10) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 11) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 12) == 3) ifTrue:[counter := counter + 3].
	((combinedh3 occurrencesOf: 13) == 3) ifTrue:[counter := counter + 3].
	
	
	((combinedh3 occurrencesOf: 1) == 2) ifTrue:[counter := counter + 2].
	((combinedh3 occurrencesOf: 2) == 2) ifTrue:[counter := counter + 2].
	((combinedh3 occurrencesOf: 3) == 2) ifTrue:[counter := counter + 2].
	((combinedh3 occurrencesOf: 4) == 2) ifTrue:[counter := counter + 2].
	((combinedh3 occurrencesOf: 5) == 2) ifTrue:[counter := counter + 2].
	((combinedh3 occurrencesOf: 6) == 2) ifTrue:[counter := counter + 2].
	((combinedh3 occurrencesOf: 7) == 2) ifTrue:[counter := counter + 2].
	((combinedh3 occurrencesOf: 8) == 2) ifTrue:[counter := counter + 2].
	((combinedh3 occurrencesOf: 9) == 2) ifTrue:[counter := counter + 2].
	((combinedh3 occurrencesOf: 10) == 2) ifTrue:[counter := counter + 2].
	((combinedh3 occurrencesOf: 11) == 2) ifTrue:[counter := counter + 2].
	((combinedh3 occurrencesOf: 12) == 2) ifTrue:[counter := counter + 2].
	((combinedh3 occurrencesOf: 13) == 2) ifTrue:[counter := counter + 2].
	
	((combinedh4 occurrencesOf: 1) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 2) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 3) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 4) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 5) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 6) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 7) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 8) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 9) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 10) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 11) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 12) == 3) ifTrue:[counter1 := counter1 + 3].
	((combinedh4 occurrencesOf: 13) == 3) ifTrue:[counter1 := counter1 + 3].
	
	((combinedh4 occurrencesOf: 1) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh4 occurrencesOf: 2) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh4 occurrencesOf: 3) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh4 occurrencesOf: 4) == 2) ifTrue:[counter1  := counter1 + 2].
	((combinedh4 occurrencesOf: 5) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh4 occurrencesOf: 6) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh4 occurrencesOf: 7) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh4 occurrencesOf: 8) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh4 occurrencesOf: 9) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh4 occurrencesOf: 10) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh4 occurrencesOf: 11) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh4 occurrencesOf: 12) == 2) ifTrue:[counter1 := counter1 + 2].
	((combinedh4 occurrencesOf: 13) == 2) ifTrue:[counter1 := counter1 + 2].
	
	
	
	counter == 5 ifTrue: [  
	((combinedh3 occurrencesOf: 1) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 1). combinedh3 removeAt: (combinedh3 indexOf: 1)].
	((combinedh3 occurrencesOf: 2) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 2) . combinedh3 removeAt: (combinedh3 indexOf: 2)].
	((combinedh3 occurrencesOf: 3) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 3). combinedh3 removeAt: (combinedh3 indexOf: 3)].
	((combinedh3 occurrencesOf: 4) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 4). combinedh3 removeAt: (combinedh3 indexOf: 4)].
	((combinedh3 occurrencesOf: 5) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 5). combinedh3 removeAt: (combinedh3 indexOf: 5)].
	((combinedh3 occurrencesOf: 6) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 6). combinedh3 removeAt: (combinedh3 indexOf: 6)].
	((combinedh3 occurrencesOf: 7) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 7). combinedh3 removeAt: (combinedh3 indexOf: 7)].
	((combinedh3 occurrencesOf: 8) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 8). combinedh3 removeAt: (combinedh3 indexOf: 8)].
	((combinedh3 occurrencesOf: 8) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 9). combinedh3 removeAt: (combinedh3 indexOf: 9)].
	((combinedh3 occurrencesOf: 10) == 1) ifTrue:[combinedt1  removeAt:(combinedh3 indexOf: 10). combinedh3 removeAt: (combinedh3 indexOf: 10)]].
	
	
		
	counter1 == 5 ifTrue: [  
	((combinedh4 occurrencesOf: 1) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 1). combinedh4 removeAt: (combinedh4 indexOf: 1)].
	((combinedh4 occurrencesOf: 2) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 2). combinedh4 removeAt: (combinedh4 indexOf: 2)].
	((combinedh4 occurrencesOf: 3) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 3). combinedh4 removeAt: (combinedh4 indexOf: 3)].
	((combinedh4 occurrencesOf: 4) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 4). combinedh4 removeAt: (combinedh4 indexOf: 4)].
	((combinedh4 occurrencesOf: 5) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 5). combinedh4 removeAt: (combinedh4 indexOf: 5)].
	((combinedh4 occurrencesOf: 6) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 6). combinedh4 removeAt: (combinedh4 indexOf: 6)].
	((combinedh4 occurrencesOf: 7) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 7). combinedh4 removeAt: (combinedh4 indexOf: 7)].
	((combinedh4 occurrencesOf: 8) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 8). combinedh4 removeAt: (combinedh4 indexOf: 8)].
	((combinedh4 occurrencesOf: 9) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 9). combinedh4 removeAt: (combinedh4 indexOf: 9)].
	((combinedh4 occurrencesOf: 10) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 10). combinedh4 removeAt: (combinedh4 indexOf: 10)].
	((combinedh4 occurrencesOf: 11) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 11). combinedh4 removeAt: (combinedh4 indexOf: 11)].
	((combinedh4 occurrencesOf: 12) == 1) ifTrue:[combinedt2  removeAt:(combinedh4 indexOf: 12). combinedh4 removeAt: (combinedh4 indexOf: 12)]
	].


	
	counter == 5 ifTrue:[returninghand := combinedt1 asArray].
	counter1 == 5 ifTrue:[returninghand := combinedt2 asArray].
	
	combinedfirstthree := combinedh3 at:1. combinedh3 at:2. combinedh3 at:3.  
	combined2firstthree :=combinedh4 at:1. combinedh4 at:2. combinedh4 at:3.  
	

	
	max := combinedfirstthree.

	max2 := combined2firstthree.

	
	((counter == 5 and: counter1 ==5) and: (max > max2 ))ifTrue: [ returninghand := combinedt1 asArray ].
	((counter == 5 and: counter1 == 5) and: (max < max2 ))ifTrue: [ returninghand := combinedt2 asArray ].
	
	((counter == 5) and: (combinedfirstthree  == 1 ))ifTrue: [ returninghand := combinedt1 asArray ].
	((counter1 == 5) and: (combined2firstthree  == 1 ))ifTrue: [ returninghand := combinedt2 asArray ].
	
	
	counter := 0.
	counter1 :=0.
	combinedfirstthree :=0.
	combined2firstthree :=0.
	"Four of a kind"
	

	((combinedh1 includesAll: #(1 1 27 40))
		ifTrue: [ returninghand := #('1C' '1D' '1H' '1S') ]).
	
	((combinedh2 includesAll: #(1 1 27 40))
		ifTrue: [ returninghand := #('1C' '1D' '1H' '1S')]).
	
	((combinedh1 includesAll: #(2 15 28 41))
		ifTrue: [ returninghand := #('2C' '2D' '2H' '2S') ]).
	
	((combinedh2 includesAll: #(2 15 28 41))
		ifTrue: [ returninghand := #('2C' '2D' '2H' '2S') ]).
	
	((combinedh1 includesAll: #(3 16 29 42))
		ifTrue: [ returninghand := #('3C' '3D' '3H' '3S') ]).
		
	((combinedh2 includesAll: #(3 16 29 42))
		ifTrue: [ returninghand := #('3C' '3D' '3H' '3S') ]).
	
	((combinedh1 includesAll:#(4 17 30 43))
		ifTrue: [ returninghand := #('4C' '4D' '4H' '4S') ]).
	
	((combinedh2 includesAll:#(4 17 30 43))
		ifTrue: [ returninghand := #('4C' '4D' '4H' '4S') ]).
	
	((combinedh1 includesAll: #(5 18 31 44))
		ifTrue: [ returninghand := #('5C' '5D' '5H' '5S')]).
	
	((combinedh2 includesAll: #(5 18 31 44))
		ifTrue: [ returninghand := #('5C' '5D' '5H' '5S')]).
		
	((combinedh1 includesAll: #(6 19 32 45))
		ifTrue: [ returninghand := #('6C' '6D' '6H' '6S')]).
	
	((combinedh2 includesAll: #(6 19 32 45))
		ifTrue: [ returninghand := #('6C' '6D' '6H' '6S')]).
		
	((combinedh1 includesAll: #(7 20 33 46))
		ifTrue: [ returninghand := #('7C' '7D' '7H' '7S') ]).
		
	((combinedh2 includesAll: #(7 20 33 46))
		ifTrue: [ returninghand := #('7C' '7D' '7H' '7S') ]).
	
	((combinedh1 includesAll: #(8 21 34 47))
		ifTrue: [ returninghand := #('8C' '8D' '8H' '8S')]).
		
	((combinedh2 includesAll: #(8 21 34 47))
		ifTrue: [ returninghand := #('8C' '8D' '8H' '8S')]).
	
	((combinedh1 includesAll:#(9 22 35 48))
		ifTrue: [ returninghand := #('9C' '9D' '9H' '9S') ]).
		
	((combinedh1 includesAll: #(10 23 36 49))
		ifTrue: [ returninghand := #('10C' '10D' '10H' '10S')]).
	
	((combinedh2 includesAll: #(10 23 36 49))
		ifTrue: [ returninghand := #('10C' '10D' '10H' '10S')]).
	
	((combinedh1 includesAll: #(11 24 37 50))
		ifTrue: [ returninghand := #('11C' '11D' '11H' '11S')]).
		
	((combinedh2 includesAll: #(11 24 37 50))
		ifTrue: [ returninghand := #('11C' '11D' '11H' '11S')]).
		
	((combinedh1 includesAll: #(12 25 38 51))
		ifTrue: [ returninghand := #('12C' '12D' '12H' '12S')]).
	
	((combinedh2 includesAll: #(12 25 38 51))
		ifTrue: [ returninghand := #('12C' '12D' '12H' '12S')]).
	
	((combinedh1 includesAll: #(13 26 39 52))
		ifTrue: [ returninghand := #('13C' '13D' '13H' '13S') ]).
	
	((combinedh2 includesAll: #(13 26 39 52))
		ifTrue: [ returninghand := #('13C' '13D' '13H' '13S') ]).

		"Straight Flush"
	
	((combinedh1 includesAll: #(5 4 3 2 1 ))
		ifTrue: [ returninghand := #('1C' '2C' '3C' '4C' '5C')]).			
					
	((combinedh2 includesAll: #(5 4 3 2 1 ))
		ifTrue: [ returninghand := #('1C' '2C' '3C' '4C' '5C')]).							
					
	((combinedh1 includesAll: #(18 17 16 15 14))
		ifTrue: [ returninghand := #('1D' '2D' '3D' '4D' '5D')]).	

	((combinedh2 includesAll: #(18 17 16 15 14))
		ifTrue: [ returninghand := #('1D' '2D' '3D' '4D' '5D')]).
					
	((combinedh1 includesAll: #(31 30 29 28 27))
		ifTrue: [ returninghand := #('1H' '2H' '3H' '4H' '5H')]).			
		
	((combinedh2 includesAll: #(31 30 29 28 27))
		ifTrue: [ returninghand := #('1H' '2H' '3H' '4H' '5H')]).			
		
	((combinedh1 includesAll: #(44 43 42 41 40))
		ifTrue: [ returninghand := #('1S' '2S' '3S' '4S' '5S')]).			
		
	((combinedh2 includesAll: #(44 43 42 41 40))
		ifTrue: [ returninghand := #('1S' '2S' '3S' '4S' '5S')]).			
		
		((combinedh1 includesAll: #(6 5 4 3 2))
		ifTrue: [ returninghand := #('2C' '3C' '4C' '5C' '6C')]).	

	((combinedh2 includesAll: #(6 5 4 3 2))
		ifTrue: [ returninghand := #('2C' '3C' '4C' '5C' '6C')]).												
											
	((combinedh1 includesAll: #(19 18 17 16 15))
		ifTrue: [ returninghand := #('2D' '3D' '4D' '5D' '6D')]).												
											
	((combinedh2 includesAll: #(19 18 17 16 15))
		ifTrue: [ returninghand := #('2D' '3D' '4D' '5D' '6D')]).												
											
	((combinedh1 includesAll: #(32 31 30 29 28))
		ifTrue: [ returninghand := #('2H' '3H' '4H' '5H' '6H')]).	
															
	((combinedh2 includesAll: #(32 31 30 29 28))
		ifTrue: [ returninghand := #('2H' '3H' '4H' '5H' '6H')]).	

	((combinedh1 includesAll: #(45 44 43 42 41))
		ifTrue: [ returninghand := #('2S' '3S' '4S' '5S' '6S')]).			
						
	((combinedh2 includesAll: #(45 44 43 42 41))
		ifTrue: [ returninghand := #('2S' '3S' '4S' '5S' '6S')]).				
						
						
						
	((combinedh1 includesAll: #(7 6 5 4 3))
		ifTrue: [ returninghand := #('3C' '4C' '5C' '6C' '7C')]).	
			
	((combinedh2 includesAll: #(7 6 5 4 3))
		ifTrue: [ returninghand := #('3C' '4C' '5C' '6C' '7C')]).	
								
	((combinedh1 includesAll: #(20 19 18 17 16))
		ifTrue: [ returninghand := #('3D' '4D' '5D' '6D' '7D')]).	
			
	((combinedh2 includesAll: #(20 19 18 17 16))
		ifTrue: [ returninghand := #('3D' '4D' '5D' '6D' '7D')]).				
			
	((combinedh1 includesAll: #(33 32 31 30 29))
		ifTrue: [ returninghand := #('3H' '4H' '5H' '6H' '7H')]).	
						
	((combinedh2 includesAll: #(33 32 31 30 29))
		ifTrue: [ returninghand := #('3H' '4H' '5H' '6H' '7H')]).				
			
	((combinedh1 includesAll: #(46 45 44 43 42))
		ifTrue: [ returninghand := #('3S' '4S' '5S' '6S' '7S')]).					
			
	((combinedh2 includesAll: #(46 45 44 43 42))
		ifTrue: [ returninghand := #('3S' '4S' '5S' '6S' '7S')]).	
			
	((combinedh1 includesAll: #(8 7 6 5 4))
		ifTrue: [ returninghand := #('4C' '5C' '6C' '7C' '8C')]).	
			
	((combinedh2 includesAll: #(8 7 6 5 4))
		ifTrue: [ returninghand := #('4C' '5C' '6C' '7C' '8C')]).	
				
	((combinedh1 includesAll: #(21 20 19 18 17))
		ifTrue: [ returninghand := #('4D' '5D' '6D' '7D' '8D')]).	
	
	((combinedh2 includesAll: #(21 20 19 18 17))
		ifTrue: [ returninghand := #('4D' '5D' '6D' '7D' '8D')]).	
	
	((combinedh1 includesAll: #(34 33 32 31 30))
		ifTrue: [ returninghand := #('4H' '5H' '6H' '7H' '8H')]).	

	((combinedh2 includesAll: #(34 33 32 31 30))
		ifTrue: [ returninghand := #('4H' '5H' '6H' '7H' '8H')]).	
		
	((combinedh1 includesAll: #(47 46 45 44 43))
		ifTrue: [ returninghand := #('4S' '5S' '6S' '7S' '8S')]).	

	((combinedh2 includesAll: #(47 46 45 44 43))
		ifTrue: [ returninghand := #('4S' '5S' '6S' '7S' '8S')]).	
					
	((combinedh1 includesAll: #(9 8 7 6 5))
		ifTrue: [ returninghand := #('5C' '6C' '7C' '8C' '9C')]).
		
	((combinedh2 includesAll: #(9 8 7 6 5))
		ifTrue: [ returninghand := #('5C' '6C' '7C' '8C' '9C')]).		
				
	((combinedh1 includesAll: #(22 21 20 19 18))
		ifTrue: [ returninghand := #('5D' '6D' '7D' '8D' '9D')]).	
												
	((combinedh1 includesAll: #(22 21 20 19 18))
		ifTrue: [ returninghand := #('5D' '6D' '7D' '8D' '9D')]).		
				
	((combinedh1 includesAll: #(35 34 33 32 31))
		ifTrue: [ returninghand := #('5H' '6H' '7H' '8H' '9H')]).					
				
	((combinedh2 includesAll: #(35 34 33 32 31))
		ifTrue: [ returninghand := #('5H' '6H' '7H' '8H' '9H')]).	
			
	((combinedh1 includesAll: #(48 47 46 45 44))
		ifTrue: [ returninghand := #('5S' '6S' '7S' '8S' '9S')]).	
									
	((combinedh2 includesAll: #(48 47 46 45 44))
		ifTrue: [ returninghand := #('5S' '6S' '7S' '8S' '9S')]).	
	
	((combinedh1 includesAll: #(10 9 8 7 6))
		ifTrue: [ returninghand := #('6C' '7C' '8C' '9C' '10C')]).	
						
	((combinedh2 includesAll: #(10 9 8 7 6))
		ifTrue: [ returninghand := #('6C' '7C' '8C' '9C' '10C')]).			
							
	((combinedh1 includesAll: #(23 22 21 20 19))
		ifTrue: [ returninghand := #('6D' '7D' '8D' '9D' '10D')]).	

	((combinedh2 includesAll: #(23 22 21 20 19))
		ifTrue: [ returninghand := #('6D' '7D' '8D' '9D' '10D')]).	

	((combinedh1 includesAll: #(36 35 34 33 32))
		ifTrue: [ returninghand := #('6H' '7H' '8H' '9H' '10H')]).	

	((combinedh2 includesAll: #(36 35 34 33 32))
		ifTrue: [ returninghand := #('6H' '7H' '8H' '9H' '10H')]).		

	((combinedh1 includesAll: #(49 48 47 46 45))
		ifTrue: [ returninghand := #('6S' '7S' '8S' '9S' '10S')]).	
				
	((combinedh2 includesAll: #(49 48 47 46 45))
		ifTrue: [ returninghand := #('6S' '7S' '8S' '9S' '10S')]).		
				
	((combinedh1 includesAll: #(11 10 9 8 7))
		ifTrue: [ returninghand := #('7C' '8C' '9C' '10C' '11C')]).	
					
	((combinedh2 includesAll: #(11 10 9 8 7))
		ifTrue: [ returninghand := #('7C' '8C' '9C' '10C' '11C')]).	

	((combinedh1 includesAll: #(24 23 22 21 20))
		ifTrue: [ returninghand := #('7D' '8D' '9D' '10D' '11D')]).	
	
	((combinedh2 includesAll: #(24 23 22 21 20))
		ifTrue: [ returninghand := #('7D' '8D' '9D' '10D' '11D')]).		
					
	((combinedh1 includesAll: #(37 36 35 34 33))
		ifTrue: [ returninghand := #('7H' '8H' '9H' '10H' '11H')]).	

	((combinedh2 includesAll: #(37 36 35 34 33))
		ifTrue: [ returninghand := #('7H' '8H' '9H' '10H' '11H')]).				

	((combinedh1 includesAll: #(50 49 48 47 46))
		ifTrue: [ returninghand := #('7S' '8S' '9S' '10S' '11S')]).	
			
	((combinedh2 includesAll: #(50 49 48 47 46))
		ifTrue: [ returninghand := #('7S' '8S' '9S' '10S' '11S')]).				
	
	((combinedh1 includesAll: #(12 11 10 9 8))
		ifTrue: [ returninghand := #('8C' '9C' '10C' '11C' '12C')]).	
	
	((combinedh2 includesAll: #(12 11 10 9 8))
		ifTrue: [ returninghand := #('8C' '9C' '10C' '11C' '12C')]).	
		
	((combinedh1 includesAll: #(25 24 23 22 21))
		ifTrue: [ returninghand := #('8D' '9D' '10D' '11D' '12D')]).	
		
	((combinedh2 includesAll: #(25 24 23 22 21))
		ifTrue: [ returninghand := #('8D' '9D' '10D' '11D' '12D')]).	
					
	((combinedh1 includesAll: #(38 37 36 35 34))
		ifTrue: [ returninghand := #('8H' '9H' '10H' '11H' '12H')]).		
			
	((combinedh2 includesAll: #(38 37 36 35 34))
		ifTrue: [ returninghand := #('8H' '9H' '10H' '11H' '12H')]).	
			
	((combinedh1 includesAll: #(51 50 49 48 47))
		ifTrue: [ returninghand := #('8S' '9S' '10S' '11S' '12S')]).			
				
	((combinedh2 includesAll: #(51 50 49 48 47))
		ifTrue: [ returninghand := #('8S' '9S' '10S' '11S' '12S')]).	
			
	((combinedh1 includesAll: #(13 12 11 10 9))
		ifTrue: [ returninghand := #('9C' ' 10C' '11C' '12C' '13C')]).
	
	((combinedh1 includesAll: #(13 12 11 10 9))
		ifTrue: [ returninghand := #('9C' ' 10C' '11C' '12C' '13C')]).
	
	((combinedh1 includesAll: #(26 25 24 23 22))
		ifTrue: [ returninghand := #('9D' ' 10D' '11D' '12D' '13D')]).
		
	((combinedh2 includesAll: #(26 25 24 23 22))
		ifTrue: [ returninghand := #('9D' ' 10D' '11D' '12D' '13D')]).
	
	((combinedh1 includesAll: #(39 38 37 36 35))
		ifTrue: [ returninghand := #('9H' ' 10H' '11H' '12H' '13H')]).
		
	((combinedh2 includesAll: #(39 38 37 36 35))
		ifTrue: [ returninghand := #('9H' ' 10H' '11H' '12H' '13H')]).	
			
	((combinedh1 includesAll: #(52 51 50 49 48))
		ifTrue: [ returninghand := #('9S' ' 10S' '11S' '12S' '13S')]).	
			
	((combinedh2 includesAll: #(52 51 50 49 48))
		ifTrue: [ returninghand := #('9S' ' 10S' '11S' '12S' '13S')]).		
	
	
	
	"Royal Flush"
	clubsroyal := #( 1 10 11 12 13 ).
	clubsarray := #('10C' '11C' '12C' '13C' '1C').
	
	diamondsroyal := #(14 23 24 25 26).
	diamondsarray := #('10D' '11D' '12D' '13D' '1D').
	
	heartsroyal := #(27 36 37 38 39).
	heartsarray := #('10H' '11H' '12H' '13H' '1H').
	
	spadesroyal := #(40 49 50 51 52).
	spadesarray := #('10S' '11S' '12S' '13S' '1S').
	
	((combinedh1 includesAll: clubsroyal)
		ifTrue: [returninghand := clubsarray]).
	
	((combinedh2 includesAll: clubsroyal )
		ifTrue: [ returninghand := clubsarray]).
	
	((combinedh1 includesAll: diamondsroyal)
		ifTrue:[ returninghand := diamondsarray]).
	
	((combinedh2 includesAll: diamondsroyal)
		ifTrue: [ returninghand  := diamondsarray]).
	
	((combinedh1 includesAll: heartsroyal)
		ifTrue: [ returninghand := heartsarray]).
	
	((combinedh2 includesAll: heartsroyal )
		ifTrue: [ returninghand := heartsarray]).
		
	((combinedh1 includesAll: spadesroyal)
		ifTrue: [ returninghand := spadesarray]).
	
	((combinedh2 includesAll: spadesroyal)
		ifTrue: [returninghand := spadesarray]).
		
	^returninghand.
