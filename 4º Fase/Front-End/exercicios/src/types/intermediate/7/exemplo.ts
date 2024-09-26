const manipularDOM = (): void => {
    const body = document.querySelector("body");
    body!.style.background = "red";
    body!.style.width = "100vw";
}

manipularDOM();