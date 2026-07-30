import VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean.CharacteristicClasses

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure IndexTheoremBridgePackage {T : TensorAlgebraStructure} {I : InvariantDecompositionPackage T} {C : CharacteristicClassesPackage I} where
  analyticIndex : Type
  topologicalIndex : Type
  indexEquality : Prop
  indexComputedViaInvariants : Prop
  indexEqualityTerm : indexEquality
  indexComputedViaInvariantsTerm : indexComputedViaInvariants

structure IndexTheoremBridgeEvidence {T : TensorAlgebraStructure} {I : InvariantDecompositionPackage T} {C : CharacteristicClassesPackage I} (B : IndexTheoremBridgePackage C) where
  indexEqualityClosed : B.indexEquality
  indexComputedViaInvariantsClosed : B.indexComputedViaInvariants

def IndexTheoremBridgeClosed {T : TensorAlgebraStructure} {I : InvariantDecompositionPackage T} {C : CharacteristicClassesPackage I} (B : IndexTheoremBridgePackage C) : Prop :=
  B.indexEquality ∧ B.indexComputedViaInvariants

theorem index_theorem_bridge_closed_from_evidence {T : TensorAlgebraStructure} {I : InvariantDecompositionPackage T} {C : CharacteristicClassesPackage I} (B : IndexTheoremBridgePackage C) (E : IndexTheoremBridgeEvidence B) : IndexTheoremBridgeClosed B :=
  And.intro E.indexEqualityClosed E.indexComputedViaInvariantsClosed

end VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse