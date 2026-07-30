import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure TensorProductStructure (V : Type u) [AddCommGroup V] [Module ℝ V] where
  baseSpace : Type u
  baseTopology : TopologicalSpace baseSpace
  rank : ℕ
  tensorPower : ℕ
  bundle : Type u
  smoothStructure : Prop
  riemannianMetric : Prop
  smoothStructureClosed : smoothStructure
  riemannianMetricClosed : riemannianMetric

structure TensorProductStructureEvidence (V : Type u) [AddCommGroup V] [Module ℝ V] (T : TensorProductStructure V) where
  smoothStructureClosed : T.smoothStructure
  riemannianMetricClosed : T.riemannianMetric

def TensorProductStructureClosed (V : Type u) [AddCommGroup V] [Module ℝ V] (T : TensorProductStructure V) : Prop :=
  T.smoothStructure ∧ T.riemannianMetric

theorem tensor_product_structure_closed_from_evidence (V : Type u) [AddCommGroup V] [Module ℝ V] (T : TensorProductStructure V) (E : TensorProductStructureEvidence V T) :
    TensorProductStructureClosed V T := by
  exact And.intro E.smoothStructureClosed E.riemannianMetricClosed

end VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse