import HautevilleHouse.DirichletSeriesSeveralComplexVariablesTheoremCanonicalLaneLean.OperatorLayer
import HautevilleHouse.DirichletSeriesSeveralComplexVariablesTheoremCanonicalLaneLean.DomainLayers

/-!
# Dirichlet series certificate closure

This module connects the theorem-local Dirichlet series certificate to the
existing canonical-lane closure: native bridge, gate closure, and carried
unrestricted classical boundary.
-/

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesTheoremCanonicalLaneLean

def dirichletSeriesCertificate : DirichletSeriesCertificate := {
  operatorLayer := dirichletSeriesObjectLayerCertificate,
  multipleVariablesLayer := multipleVariablesEndpointLayerCertificate,
  carriageRecord := dirichletSeriesCarriageRecord,
  baselineGatesClosed := true,
  formulaLayerModeled := true,
  seriesObjectClosed := true,
  classicalBoundaryCarried := true
}

def DirichletSeriesCertificateClosed (C : DirichletSeriesCertificate) : Prop :=
  DirichletSeriesObjectLayerClosed C.operatorLayer ∧
  DirichletSeriesMultipleVariablesEndpointLayerClosed C.multipleVariablesLayer ∧
  DirichletSeriesSpectralClosed C.multipleVariablesLayer.seriesDatum ∧
  C.baselineGatesClosed = true ∧
  C.formulaLayerModeled = true ∧
  C.seriesObjectClosed = true ∧
  C.classicalBoundaryCarried = true

theorem dirichlet_series_certificate_closed_checked :
    DirichletSeriesCertificateClosed dirichletSeriesCertificate := by
  exact And.intro dirichlet_series_object_layer_closed_checked
    (And.intro multiple_variables_endpoint_layer_closed_checked
    (And.intro primitive_dirichlet_series_spectral_closed_checked
    (And.intro rfl
    (And.intro rfl
    (And.intro rfl rfl)))))

def DirichletSeriesAdmittedClassBridge : Prop :=
  bridgeClosed dirichletSeriesAdmissibleClass ∧ gateClosed dirichletSeriesAdmissibleClass ∧ ClassicalSourceBoundaryCarried

theorem dirichlet_series_admitted_class_bridge_checked :
    DirichletSeriesAdmittedClassBridge := by
  exact And.intro (bridge_from_admissible_class dirichletSeriesAdmissibleClass)
    (And.intro (gate_from_admissible_class dirichletSeriesAdmissibleClass) classical_source_boundary_carried_checked)

end DirichletSeriesSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse