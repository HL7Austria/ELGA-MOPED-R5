document.addEventListener('DOMContentLoaded', function() {
  const mermaidCodes = document.querySelectorAll('pre.language-mermaid code.language-mermaid');
  Array.from(mermaidCodes).forEach(function(code) {
    const pre = code.parentNode;
    const content = code.textContent;
    const mermaidDiv = document.createElement('div');
    mermaidDiv.className = 'mermaid';
    mermaidDiv.textContent = content;
    pre.parentNode.replaceChild(mermaidDiv, pre);
  });
  // https://chat.fhir.org/#narrow/channel/179252-IG-creation/topic/Mermaid.20support/near/527103652
  // https://docs.mermaidchart.com/mermaid-oss/config/usage.html#securitylevel
  mermaid.initialize({ securityLevel: 'loose' });
});
