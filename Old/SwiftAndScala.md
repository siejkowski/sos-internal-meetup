
* podstawowe budulce - typy:
	* class (inheritance, override, reference types, final)
	* enum, struct / case class (mutating, pattern matching, apply-unapply, value semantics)
	* protocol & extension / trait & abstract class
	* closures, functions (reference types, but no inheritance)
	* init, deinit / constructor (z uwzględnieniem designated initializer, two-phase, failable)
	* ? / object
	* static, class / companion object (z uwzględnieniem większych możliwości companion object, ale też różnicy między static a class)
	* generics
	* associated types
* składnia - porównanie bezpośrednie: scala/swift
	* deklaracje
		* zmienna, stała
		* funkcja, closure (return vs nie ma returnu) - named parameters!
	* modyfikatory na poziomie składni:
		* var & val / var & let
		* private, public, internal / private[???], public (podkreślić default)
	* scopes
		* modules, global scope, file scope / packages, sealed
	* typy wspierane na poziomie składni:
		* string (string interpolation, utf)
		* tablica
		* słownik
		* tuple
		* optional
	* sterowanie na poziomie składni:
		* if, if let / if (force unwrapping, optional binding, optional chain, nil coalescing operator, ternary operator)
		* guard
		* try, catch, throws, rethrows, throw / try, catch, finally, throw (?)
		* asercje
		* for, while, repeat-while / for, while, 
		* switch, case / match, case (binding! conditions!)
		* type casting: is, as, as?, as! / ?
		* #available / ?
	* wsparcie dla szczególnych konceptów
		* nullability: optionals / options
		* operators / ?
		* trailing closures, @autoclosure, @noescape / składnia do domknięć bez {}, @tailrec
		* nested functions / recursion?
		* ? / składnia do funkcji bez kropki (andThen)
		* equality, identity
		* properties, stores vs computed properties / fields, def without body
		* ? / variance, covariance operators
		* ? / duck typing
		* laziness
		* property observers / ? (to bezpośredni spadek objective-c)
		* subscripting / ? (subscript overloading)
		* variadic parameters
		* var parameters in functions, inout parameters
		* type constraints
* mechanizmy języka:
	* memory management: arc / garbage collector, weak-strong
* 
