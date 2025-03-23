# MeTTa Project Scripts

This repository contains several MeTTa scripts that perform various operations. Below is a description of each file and its functionality.

## Files

### 1. `extractor.metta`
This script provides functionality to filter elements of a list based on a specified predicate function.

#### Key Features:
- Defines a `List` type with constructors `Nil` and `Cons`.
- Implements a `filter` function to filter elements of a list using a callback predicate.
- Includes a sample predicate function `is-even` to filter even numbers.

#### Example Usage:
```metta
!(filter Nil is-even) ; [Nil]
!(filter (Cons 1 (Cons 2 (Cons 3 (Cons 4 Nil)))) is-even) ; [(Cons 2 (Cons 4 Nil))]
```

### 2. `is-member.metta`
This script checks whether a given element is a member of a list.

#### Key Features:
- Implements a recursive `is-member` function to determine membership in a list.
- Supports both numeric and symbolic elements.

#### Example Usage:
```metta
!(is-member 2 (Cons 1 (Cons 2 (Cons 3 Nil)))) ; [True]
!(is-member 4 (Cons 1 (Cons 2 (Cons 3 Nil)))) ; [False]
```

### 3. `removeDuplicate.metta`
TThis script removes duplicate elements from a list

#### Key Features:
- Implements a `remove-duplicate` function to eliminate duplicates from a list.
- Preserves the order of the first occurrence of elements.

#### Example Usage:
```metta
!(remove-duplicate (Cons 1 (Cons 2 (Cons 1 (Cons 3 Nil))))) ; [(Cons 1 (Cons 2 (Cons 3 Nil)))]
```

