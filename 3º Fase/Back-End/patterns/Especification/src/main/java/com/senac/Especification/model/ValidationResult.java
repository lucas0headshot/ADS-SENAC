package com.senac.Especification.model;

public class ValidationResult {
    private Boolean isValid;
    private String message;

    public ValidationResult(Boolean isValid, String message) {
        this.isValid = isValid;
        this.message = message;
    }

    public Boolean getValid() {
        return isValid;
    }

    public void setValid(Boolean valid) {
        isValid = valid;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public static ValidationResult isValid() {
        return new ValidationResult(true,"");
    }

    public static ValidationResult invalid(String msg) {
        return new ValidationResult(false, msg);
    }
}
