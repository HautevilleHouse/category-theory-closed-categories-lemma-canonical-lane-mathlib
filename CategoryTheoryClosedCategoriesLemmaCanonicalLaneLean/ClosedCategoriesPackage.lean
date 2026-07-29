import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean

structure ClosedMonoidalPackage where
  monoidalCategory : Type u
  internalHom : Type v
  evaluation : Prop
  composition : Prop
  adjunction : Prop

structure ClosedMonoidalEvidence (C : ClosedMonoidalPackage) where
  evaluationClosed : C.evaluation
  compositionClosed : C.composition
  adjunctionClosed : C.adjunction

def ClosedMonoidalClosed (C : ClosedMonoidalPackage) : Prop :=
  C.evaluation ∧ C.composition ∧ C.adjunction

theorem closed_monoidal_closed_from_evidence
    (C : ClosedMonoidalPackage) (E : ClosedMonoidalEvidence C) :
    ClosedMonoidalClosed C := by
  exact And.intro E.evaluationClosed
    (And.intro E.compositionClosed E.adjunctionClosed)

end CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse