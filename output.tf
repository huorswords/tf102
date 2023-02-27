output "InstrumentationKey" {
    value = azurerm_application_insights.ai.instrumentation_key
    sensitive = true  
}