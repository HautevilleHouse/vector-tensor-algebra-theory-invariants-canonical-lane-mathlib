import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure TensorInvariantsPackage where
  baseManifold : Type u
  tangentBundle : Type v
  tensorFields : Type w
  metricStructure : Prop
  connectionDefined : Prop
  curvatureTensor : Type x
  ricciTensor : Type y
  scalarCurvature : Type z

structure TensorInvariantsEvidence (P : TensorInvariantsPackage) where
  metricStructureClosed : P.metricStructure
  connectionDefinedClosed : P.connectionDefined

def TensorInvariantsClosed (P : TensorInvariantsPackage) : Prop :=
  P.metricStructure ∧ P.connectionDefined

theorem tensor_invariants_closed_from_evidence (P : TensorInvariantsPackage)
    (E : TensorInvariantsEvidence P) : TensorInvariantsClosed P := by
  exact And.intro E.metricStructureClosed E.connectionDefinedClosed

end VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse