class NavigationBar extends HTMLElement
{
  constructor()
  {
    super()
    this.shadow = this.attachShadow({mode: 'open'});
  }

  render()
  {
  }
}

customElements.define('navigation-bar', NavigationBar)
