class CustomHTMLElement extends HTMLElement
{
  constructor()
  {
    super()
  }

  connectedCallback()
  {
    const shadowRoot = this.attachShadow({mode: 'closed'})
    const content = this.render()

    shadowRoot.innerHTML = content
  }
}
