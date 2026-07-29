import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdjoint : Type u → Type v
  rightAdjoint : Type u → Type v
  adjunctionIso : Prop
  unitCone : Prop
  counitCone : Prop
  triangularIdentities : Prop

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  adjunctionIsoClosed : A.adjunctionIso
  unitConeClosed : A.unitCone
  counitConeClosed : A.counitCone
  triangularIdentitiesClosed : A.triangularIdentities

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.adjunctionIso ∧ A.unitCone ∧ A.counitCone ∧ A.triangularIdentities

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage) (E : AdjointFunctorEvidence A) :
    AdjointFunctorClosed A := by
  exact And.intro E.adjunctionIsoClosed
    (And.intro E.unitConeClosed
      (And.intro E.counitConeClosed E.triangularIdentitiesClosed))

end CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse