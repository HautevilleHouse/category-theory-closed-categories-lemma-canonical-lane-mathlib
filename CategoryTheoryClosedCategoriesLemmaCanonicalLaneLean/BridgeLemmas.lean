import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ClosedCategoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse