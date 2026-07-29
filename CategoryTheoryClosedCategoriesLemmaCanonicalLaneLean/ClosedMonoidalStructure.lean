import HautevilleHouse.CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean

structure ClosedMonoidalPackage where
  internalHomExists : Prop
  evaluationMapDefined : Prop
  compositionMapDefined : Prop

structure ClosedMonoidalEvidence (C : ClosedMonoidalPackage) where
  internalHomClosed : C.internalHomExists
  evaluationClosed : C.evaluationMapDefined
  compositionClosed : C.compositionMapDefined

def ClosedMonoidalClosed (C : ClosedMonoidalPackage) : Prop :=
  C.internalHomExists ∧ C.evaluationMapDefined ∧ C.compositionMapDefined

theorem closed_monoidal_closed_from_evidence (C : ClosedMonoidalPackage)
    (E : ClosedMonoidalEvidence C) : ClosedMonoidalClosed C := by
  exact And.intro E.internalHomClosed
    (And.intro E.evaluationClosed E.compositionClosed)

end CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse