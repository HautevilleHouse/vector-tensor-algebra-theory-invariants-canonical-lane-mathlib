import VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean.InvariantDecomposition

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure CharacteristicClassesPackage {T : TensorAlgebraStructure} {I : InvariantDecompositionPackage T} where
  chernClasses : Type
  pontryaginClasses : Type
  eulerClass : Type
  multiplicativeUnderWhitneySum : Prop
  stableInvariance : Prop

structure CharacteristicClassesEvidence {T : TensorAlgebraStructure} {I : InvariantDecompositionPackage T} (C : CharacteristicClassesPackage I) where
  multiplicativeUnderWhitneySumClosed : C.multiplicativeUnderWhitneySum
  stableInvarianceClosed : C.stableInvariance

def CharacteristicClassesClosed {T : TensorAlgebraStructure} {I : InvariantDecompositionPackage T} (C : CharacteristicClassesPackage I) : Prop :=
  C.multiplicativeUnderWhitneySum ∧ C.stableInvariance

theorem characteristic_classes_closed_from_evidence {T : TensorAlgebraStructure} {I : InvariantDecompositionPackage T} (C : CharacteristicClassesPackage I) (E : CharacteristicClassesEvidence C) : CharacteristicClassesClosed C :=
  And.intro E.multiplicativeUnderWhitneySumClosed E.stableInvarianceClosed

end VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse