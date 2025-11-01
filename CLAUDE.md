# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

This repository contains exercise solutions and notes from working through "Haskell Programming from First Principles" by Allen & Moronuki. Each chapter has corresponding `.hs` files with exercise answers and experimentation code.

## File Organization

- `ch0X.hs` - Haskell exercise files for each chapter (e.g., `ch02.hs`, `ch03.hs`, etc.)
- `ch0X.md` - Notes and written exercise answers for chapters (e.g., `ch01.md` for lambda calculus exercises)
- `haskell-learning-path.md` - Complete learning roadmap and progress tracking
- `rvrs.hs` - Standalone exercise file (reverse string function from Chapter 3)

## Development Environment

**Toolchain:**
- GHC 9.10.1 (Glasgow Haskell Compiler)
- ghci (interactive REPL)
- runghc (run Haskell as script)
- Managed via ghcup

**No build system configured** - This is a learning repository without Cabal or Stack project files. Each `.hs` file is standalone.

## Working with Code

### Loading and Testing Code in REPL

Load a chapter file into ghci:
```bash
ghci ch02.hs
```

Reload after changes (in ghci):
```
:reload
```

Run a specific function:
```
ghci> functionName arguments
```

Check type signatures:
```
ghci> :type functionName
```

### Running Standalone Files

Execute a Haskell file directly:
```bash
runghc ch03.hs
```

### Code Structure Conventions

Each chapter file follows this pattern:
- Module declaration at top (e.g., `module Ch02 where`)
- Exercise sections marked with comments (e.g., `-- Exercises: Parentheses and association`)
- Functions often have multiple variants with apostrophes (e.g., `f`, `f'`, `f''`) to show different approaches
- Comments include expected output values

## Important Context

### Learning Progression
- Currently working through Chapter 5 (based on git history: "start of chapter 5")
- Completed chapters 1-4 with comprehensive exercise solutions
- This is **active learning code** - expect experimentation, multiple solution attempts, and work-in-progress functions

### Code Characteristics
- **Not production code** - These are learning exercises and explorations
- Functions may have intentionally different implementations to explore concepts
- Some code includes deliberate errors or commented-out broken code for learning purposes
- Variable names may be simple (x, y, z, f, g) as per book exercises

### Chapter-Specific Notes

**Chapter 1 (ch01.md):** Lambda calculus exercises - written format only, no Haskell code

**Chapter 2 (ch02.hs):** Basic functions, let/where bindings, operator precedence exercises

**Chapter 3 (ch03.hs):** String operations, scope exercises, basic list functions. Includes a `main` function and imports.

**Chapter 4 (ch04.hs):** Type signatures, basic datatypes (Mood example), type errors, tuples

**Chapter 5 (ch05.hs):** Currently in progress, mostly empty

## When Helping with This Repository

1. **Respect the learning process** - Don't over-optimize or introduce advanced concepts prematurely
2. **Follow book conventions** - Exercise numbering and naming should match "Haskell Programming from First Principles"
3. **Test in ghci** - Always verify solutions work in the REPL
4. **Preserve learning artifacts** - Keep multiple solution variants (f, f', f'') as they show progression
5. **Match existing style** - Keep code simple and focused on the concept being learned

## Common Development Tasks

**Add solution to current chapter:**
1. Open the chapter file (e.g., `ghci ch05.hs`)
2. Add function with exercise comment header
3. Test in REPL with `:reload`

**Start new chapter:**
1. Create new file: `ch0X.hs` (where X is chapter number)
2. Add module declaration: `module Ch0X where`
3. Add exercise sections as you work through the chapter

**Verify type signatures:**
```bash
ghci ch05.hs
:type functionName
```
