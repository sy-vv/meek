﻿using Orchard.ContentManagement.Handlers;
using Orchard.ContentManagement.ViewModels;

namespace Orchard.DevTools.Models {
    public class DebugLinkHandler : ContentHandler {
        protected override void BuildDisplayModel(BuildDisplayModelContext context) {
            context.AddDisplay(new TemplateViewModel(new ShowDebugLink { ContentItem = context.ContentItem }) { TemplateName="Parts/DevTools.ShowDebugLink", ZoneName = "recap", Position = "9999" });
        }
        protected override void BuildEditorModel(BuildEditorModelContext context) {
            context.AddEditor(new TemplateViewModel(new ShowDebugLink { ContentItem = context.ContentItem }) { TemplateName = "Parts/DevTools.ShowDebugLink", ZoneName = "recap", Position = "9999" });
        }
    }
}