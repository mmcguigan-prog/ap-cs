# AP Computer Science A — 2026-27

Course materials for AP CSA. **Semester 1 is taught in Processing** (Java-mode `.pde`
sketches); Semester 2 moves to plain Java in VSCode.

## Folder Structure

Modeled on the existing `apcs` repo: units are numbered `_1`, `_2`, ... and lessons
within a unit are numbered `_1`, `_2`, ...

```
apcs2026/
├── unit_overviews/     One reference doc per unit + a Processing quick reference
├── demos/              Code I run and narrate in class
│   └── _1/_3/MethodParameters/MethodParameters.pde
└── activities/         Student challenge sets
    └── _1/_3/MethodParametersChallenges.md
```

**No starter files.** Activities are challenge sets, not fill-in-the-blank worksheets —
students open an empty sketch and build. Each set is tiered (Level 1 → Level 3 → 🔥) so
everyone has somewhere to go.

**Processing note:** every sketch must live in a folder whose name matches the `.pde`
file (`ProcessingReview/ProcessingReview.pde`). That is why demo and activity code sits
one folder deeper here than it does in the Java repo.

## Quarter 1

| Unit | Lessons | Quiz |
|------|---------|------|
| `_1` Variables and Methods | 5 | Methods Quiz (Lesson 5) |
| `_2` Conditionals | 4 | Conditionals Quiz |
| `_3` Loops | 4 | Loops Quiz |
| `_4` Arrays | 5 | Arrays Quiz |

### Unit 1: Variables and Methods

| Lesson | Topic | Demos | Activity |
|--------|-------|-------|----------|
| `_1` | Intro & Processing Review | `ProcessingReview`, `ShapesAndAlpha`, `MotionPreview` | [Processing Review Challenges](activities/_1/_1/ProcessingReviewChallenges.md) |
| `_2` | Variables — motion and calculation | `Variables`, `VariablesInMotion` | [Variables Challenges](activities/_1/_2/VariablesChallenges.md) |
| `_3` | Methods — writing and calling, parameters | `FirstMethods`, `MethodParameters` | [Methods Challenges](activities/_1/_3/MethodsChallenges.md) |
| `_4` | Methods — return values, overloading, scope | `ReturnValues`, `MethodOverloading`, `ScopeAndHelpers` | [Return Value & Scope Challenges](activities/_1/_4/ReturnMethodsChallenges.md) |
| `_5` | Methods Quiz | `QuizReview` | [Study Guide](activities/_1/_5/StudyGuide.md) · [Practice Quiz](activities/_1/_5/PracticeQuiz.md) |

Unit reference: [Unit 1 Overview](unit_overviews/Unit1_VariablesAndMethods.md) ·
[Processing Quick Reference](unit_overviews/ProcessingQuickReference.md)
