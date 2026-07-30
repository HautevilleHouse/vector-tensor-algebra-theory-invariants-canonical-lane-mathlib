import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure SyzygyBasisPackage where
  minimalGenerators : Prop
  syzygyRelations : Prop
  hilbertBasisTheorem : Prop
  freeResolution : Prop

structure SyzygyBasisEvidence (S : SyzygyBasisPackage) where
  minimalGeneratorsClosed : S.minimalGenerators
  syzygyRelationsClosed : S.syzygyRelations
  hilbertBasisTheoremClosed : S.hilbertBasisTheorem
  freeResolutionClosed : S.freeResolution

def SyzygyBasisClosed (S : SyzygyBasisPackage) : Prop :=
  S.minimalGenerators ∧ S.syzygyRelations ∧
  S.hilbertBasisTheorem ∧ S.freeResolution

theorem syzygy_basis_closed_from_evidence
    (S : SyzygyBasisPackage)
    (E : SyzygyBasisEvidence S) :
    SyzygyBasisClosed S := by
  exact And.intro E.minimalGeneratorsClosed
    (And.intro E.syzygyRelationsClosed
      (And.intro E.hilbertBasisTheoremClosed
        E.freeResolutionClosed))

end VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse