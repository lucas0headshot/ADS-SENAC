export const multiploCallback = (success: Function, error: Function, complete: Function): Function => {
    const erro = Boolean(Math.floor(Math.random() * 2));
    
    if (erro)
        error()
    else
        success()

    return complete();
};