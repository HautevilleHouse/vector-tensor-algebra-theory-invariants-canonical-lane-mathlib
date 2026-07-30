import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TensorInvariantWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse