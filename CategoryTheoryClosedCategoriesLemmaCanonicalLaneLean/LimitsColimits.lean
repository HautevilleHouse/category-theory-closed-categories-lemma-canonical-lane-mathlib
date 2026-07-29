import HautevilleHouse.CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean

structure LimitsColimitsPackage where
  allFiniteLimits : Prop
  allFiniteColimits : Prop
  preservationByAdjoints : Prop

structure LimitsColimitsEvidence (L : LimitsColimitsPackage) where
  finiteLimitsClosed : L.allFiniteLimits
  finiteColimitsClosed : L.allFiniteColimits
  preservationClosed : L.preservationByAdjoints

def LimitsColimitsClosed (L : LimitsColimitsPackage) : Prop :=
  L.allFiniteLimits ∧ L.allFiniteColimits ∧ L.preservationByAdjoints

theorem limits_colimits_closed_from_evidence (L : LimitsColimitsPackage)
    (E : LimitsColimitsEvidence L) : LimitsColimitsClosed L := by
  exact And.intro E.finiteLimitsClosed
    (And.intro E.finiteColimitsClosed E.preservationClosed)

end CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse