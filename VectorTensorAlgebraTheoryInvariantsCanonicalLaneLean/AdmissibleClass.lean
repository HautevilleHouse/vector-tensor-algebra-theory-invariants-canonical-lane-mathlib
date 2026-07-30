import VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure AdmissibleClass where
  object : VectorTensorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VectorTensorWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse