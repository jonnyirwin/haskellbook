# Haskell Learning Path

## Your Books

1. **Haskell Programming from First Principles** (Allen & Moronuki) - Primary curriculum
2. **Category Theory for Programmers** (Bartosz Milewski) - Theory & foundations (read after Ch 21)
3. **Functional Design and Architecture** (Manning) - Application structure & patterns
4. **Get Programming with Haskell** (Kurt) - Practical projects
5. **Learn Haskell By Example** - Reference & idioms
6. ~~Learn You a Haskell for Great Good~~ - Skip (outdated, no exercises)

## The Optimal Path

### Phase 1: Foundations (Months 1-3)
**Primary: Haskell Programming from First Principles (Chapters 1-26)**

Focus areas:
- Chapter 1-4: Basics, types, strings
- Chapter 5-9: Types, typeclasses, folding
- Chapter 10-15: Algebraic datatypes, signaling adversity
- Chapter 16-21: Functor, Applicative, Monad
- Chapter 22-26: Reader, State, monad transformers

**Goal**: Understand Haskell's type system and core abstractions

**Practice**:
- Do ALL exercises (this is critical)
- Use `<leader>hr` in Neovim to test everything in REPL
- Don't rush - slow and steady wins

### Phase 1.5: Category Theory (Optional - Start after Chapter 21)
**Primary: Category Theory for Programmers (Bartosz Milewski)**

Focus areas:
- Mathematical foundations of functional programming
- Why functors, monads, and other abstractions exist
- Category theory concepts applied to programming
- Type-level thinking and composition

**Goal**: Deepen understanding of why Haskell works the way it does

**Practice**:
- Work through examples alongside First Principles
- Revisit earlier exercises with new theoretical understanding
- Don't rush - this is supplementary, not required for practical work

**Timing Options**:
1. Read alongside Phase 1 after completing Chapter 21
2. Read during Phase 2 while learning architecture
3. Read after completing all phases to solidify understanding

### Phase 2: Architecture (Months 3-4)
**Primary: Functional Design and Architecture**

Focus areas:
- Effect systems (mtl, free monads, polysemy)
- Application structure patterns
- Separation of concerns in FP
- Testing strategies
- Real-world project organization

**Goal**: Learn how to structure real applications

**Practice**:
- Apply patterns to small projects
- Refactor earlier exercises using better architecture

### Phase 3: Practical Applications (Months 4-5)
**Primary: Get Programming with Haskell**

Focus areas:
- Building real projects
- Web development examples
- Practical libraries and tools
- End-to-end application development

**Supplement**:
- Use "Learn Haskell By Example" as reference
- See idiomatic patterns
- Quick lookups for common tasks

**Goal**: Build confidence with practical Haskell

### Phase 4: Web Development (Month 5+)
**Choose a web framework:**

#### Option 1: IHP (Integrated Haskell Platform)
- Rails-like framework
- Beginner friendly
- Great for coming from Ruby/Rails
- Batteries included
- https://ihp.digitallyinduced.com/

#### Option 2: Servant
- Type-safe REST APIs
- Popular in industry
- Great type-level programming
- More advanced

#### Option 3: Scotty
- Minimal, simple
- Like Sinatra
- Good for learning basics
- Less magic

**Practice**:
- Clone a Rails/Elixir project you've built
- Build a real application
- Deploy it

## Timeline Expectations

### Casual Pace (1-2 hrs/day, 3-4 days/week)
- Phase 1: 4-5 months
- Phase 2: 1-2 months
- Phase 3: 2-3 months
- Phase 4: 1-2 months
- **Total: 8-12 months to shipping web apps**

### Focused Pace (2-3 hrs/day, 5-6 days/week)
- Phase 1: 2-3 months
- Phase 2: 1 month
- Phase 3: 1-2 months
- Phase 4: 1 month
- **Total: 5-7 months to shipping web apps**

### Intensive Pace (4+ hrs/day, daily)
- Phase 1: 1.5-2 months
- Phase 2: 2-3 weeks
- Phase 3: 3-4 weeks
- Phase 4: 2-3 weeks
- **Total: 3-4 months to shipping web apps**

## Critical Success Factors

### 1. Do the Exercises
First Principles has 20-40 exercises per chapter. **Don't skip them.** This is where real learning happens.

### 2. Use the REPL Constantly
Your Neovim setup makes this easy:
- `<leader>hr` - Toggle REPL for current file
- Type examples from the book
- Experiment with variations
- See type signatures with `<leader>lh`

### 3. Don't Rush First Principles
Many people burn out around chapters 10-12 trying to speed through. The exercises are cumulative - skipping early ones makes later ones impossible.

### 4. Build While Learning
After understanding a concept in First Principles, build something small with it. Use Get Programming for project ideas.

### 5. Accept That It Takes Time
Haskell's type system is different from Ruby/Elixir. Give yourself permission to take 6-9 months. You're learning a fundamentally different way of programming.

## Milestones & Checkpoints

### Milestone 1: "I understand types" (End of FP Chapter 9)
- You can write basic functions
- Type signatures make sense
- You understand typeclasses basics

**Checkpoint**: Write a simple data processing program (parse CSV, transform data, output JSON)

### Milestone 2: "I get functors and monads" (End of FP Chapter 21)
- Functor, Applicative, Monad make sense
- You can use Maybe, Either, IO
- List comprehensions vs do-notation

**Checkpoint**: Build a simple CLI tool (API client, file processor, etc.)

### Milestone 3: "I can manage effects" (End of FP Chapter 26)
- Understand monad transformers
- Can use Reader, State, Writer
- Know when to use what

**Checkpoint**: Build something stateful (game, interactive program)

### Milestone 4: "I can structure applications" (After Functional Design)
- Understand different effect systems
- Can organize a real codebase
- Know testing strategies

**Checkpoint**: Refactor a previous project with better architecture

### Milestone 5: "I can build web apps" (After framework learning)
- Built and deployed a web application
- Understand the framework patterns
- Can read/contribute to Haskell codebases

**Checkpoint**: Clone one of your Rails/Elixir projects in Haskell

## Your Advantages

Coming from Ruby/Elixir, you already understand:
- ✓ Pattern matching
- ✓ Immutability
- ✓ Higher-order functions
- ✓ Recursion
- ✓ Functional composition (Elixir pipe operator)

What's new:
- Pure functions (no side effects)
- Lazy evaluation
- Type system (more powerful than you're used to)
- Type-level programming
- Different effect management (no processes/actors)

## Development Environment

### Tools Installed
- **GHC 9.10.1** - Haskell compiler
- **Cabal 3.16.0.0** - Package manager
- **ghcup** - Toolchain manager
- **HLS 2.10.0.0** - Language Server
- **Fourmolu** - Code formatter (installing)

### Neovim Setup

#### LSP Features (Standard)
- `<leader>ld` - Go to definition
- `<leader>lr` - Find references
- `<leader>lh` - Hover (show type info)
- `<leader>la` - Code actions
- `<leader>lc` - Rename symbol
- `<leader>le` - Show diagnostic popup
- `<leader>lj` / `<leader>lk` - Next/previous diagnostic

#### Haskell-Specific (`<leader>h`)
- `<leader>hf` - Format buffer
- `<leader>hs` - Hoogle signature search (find function by type)
- `<leader>he` - Evaluate all code
- `<leader>hH` - Search Hoogle
- `<leader>hr` - Toggle REPL for current file
- `<leader>hR` - Toggle REPL for package
- `<leader>hq` - Quit REPL
- `<leader>hp` - Open package.yaml
- `<leader>hc` - Open cabal file

#### Debug Commands
- `:HaskellLspStatus` - Check HLS status

### Typical Development Workflow

1. Open file: `nvim chapter1.hs`
2. Write code - HLS shows types/errors in real-time
3. Hover over functions: `<leader>lh` to see type signatures
4. Test in REPL: `<leader>hr` to load and experiment
5. Format code: `<leader>hf` before saving
6. Search functions: `<leader>hs` to find by type signature

## Project Organization

Create a learning directory:
```bash
mkdir -p ~/haskell-learning
cd ~/haskell-learning
```

Suggested structure:
```
haskell-learning/
├── first-principles/
│   ├── ch01-basics/
│   ├── ch02-functions/
│   ├── ch03-strings/
│   └── ... (one directory per chapter)
├── projects/
│   ├── cli-tool/
│   ├── web-app/
│   └── game/
├── exercises/
│   └── practice/
└── notes.md
```

## Resources

### Official Documentation
- Haskell.org: https://www.haskell.org/
- GHC User Guide: https://downloads.haskell.org/ghc/latest/docs/html/users_guide/
- Hackage (packages): https://hackage.haskell.org/

### Community
- r/haskell: https://reddit.com/r/haskell
- Haskell Discourse: https://discourse.haskell.org/
- Haskell IRC: #haskell on Libera.Chat

### Tools
- Hoogle (search by type): https://hoogle.haskell.org/
- Stackage (curated packages): https://www.stackage.org/

### When You're Ready for Web Dev
- IHP: https://ihp.digitallyinduced.com/
- Servant tutorial: https://docs.servant.dev/
- Scotty: https://github.com/scotty-web/scotty

## Common Pitfalls to Avoid

1. **Skipping exercises** - You won't learn without practice
2. **Rushing** - Type errors are confusing when you don't understand the fundamentals
3. **Not using the REPL** - Haskell is best learned interactively
4. **Trying to write imperative code** - Embrace the functional style
5. **Getting discouraged by monads** - Everyone struggles with them at first
6. **Not reading type signatures** - They tell you everything
7. **Avoiding type errors** - They're helpful, not adversarial

## When to Ask for Help

- Stuck on an exercise for > 1 hour? Review the chapter section
- Stuck for > 2 hours? Check online resources/community
- Type error doesn't make sense? Use `:HaskellLspStatus` and `<leader>le`
- Concept not clicking? Try a different explanation (other book, blog post, video)

## Progress Tracking

Update this as you go:

### First Principles Progress
- [x] Ch 1: All You Need is Lambda
- [x] Ch 2: Hello, Haskell!
- [x] Ch 3: Strings
- [x] Ch 4: Basic datatypes
- [x] Ch 5: Types
- [x] Ch 6: Typeclasses
- [ ] Ch 7: More functional patterns
- [ ] Ch 8: Recursion
- [ ] Ch 9: Lists
- [ ] Ch 10: Folding lists
- [ ] Ch 11: Algebraic datatypes
- [ ] Ch 12: Signaling adversity
- [ ] Ch 13: Building projects
- [ ] Ch 14: Testing
- [ ] Ch 15: Monoid, Semigroup
- [ ] Ch 16: Functor
- [ ] Ch 17: Applicative
- [ ] Ch 18: Monad
- [ ] Ch 19: Applying structure
- [ ] Ch 20: Foldable
- [ ] Ch 21: Traversable ⭐ *Start Category Theory after this*
- [ ] Ch 22: Reader
- [ ] Ch 23: State
- [ ] Ch 24: Parser combinators
- [ ] Ch 25: Composing types
- [ ] Ch 26: Monad transformers
- [ ] Ch 27-31: Final chapters (Optional for web dev)

### Category Theory for Programmers Progress
- [ ] Part 1: Categories (Ch 1-10)
- [ ] Part 2: Functors & Natural Transformations (Ch 1-8)
- [ ] Part 3: Advanced Topics (Ch 1-5)

### Projects Completed
- [ ] First small program (Milestone 1)
- [ ] CLI tool (Milestone 2)
- [ ] Stateful program (Milestone 3)
- [ ] Refactored project (Milestone 4)
- [ ] Web application (Milestone 5)

---

**Remember**: Haskell is a marathon, not a sprint. You're investing in fundamentally understanding functional programming. Take your time, do the exercises, and you'll be writing production Haskell in 6-9 months.

**Good luck! 🚀**
