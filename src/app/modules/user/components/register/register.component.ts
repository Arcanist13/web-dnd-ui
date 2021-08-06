import { HttpErrorResponse } from '@angular/common/http';
import { Component } from '@angular/core';
import { AbstractControl, FormBuilder, FormGroup, ValidationErrors, ValidatorFn, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { UserService } from 'src/app/modules/user/services/user.service';

export const passwordMatchValidator: ValidatorFn = (formGroup: AbstractControl): ValidationErrors | null => {
  if (formGroup.get('password1')?.value === formGroup.get('password2')?.value)
    return null;
  else
    return {passwordMismatch: true};
};

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent {

  form: FormGroup;
  public registerInvalid = false;
  public registerInvalidText = '';
  public readonly MIN_PW = 8;
  private formSubmitAttempt = false;

  constructor(
    private _fb: FormBuilder,
    private _userService: UserService,
    private _router: Router
  ) {
    this.form = this._fb.group({
      username: ['', Validators.required],
      email: ['', Validators.email],
      password1: ['', [Validators.required, Validators.minLength(this.MIN_PW)]],
      password2: ['', Validators.required]
    }, {validator: passwordMatchValidator});
  }

  /**
   * On form submit check for errors and attempt to register account.
   *
   * After successful registration the user will be logged in (via the user
   * service) and redirected to the home page.
   *
   * @returns submit result
   */
  async onSubmit(): Promise<void> {
    this.registerInvalid = false;
    this.formSubmitAttempt = false;
    if (this.form.valid) {
      try {
        const username = this.form.get('username')?.value;
        const password = this.form.get('password1')?.value;
        const email = this.form.get('email')?.value;
        await this._userService.register(username, email, password);
        this._router.navigate(['spells']);
      } catch (err) {
        if ((err as HttpErrorResponse).status === 409) {
          this.registerInvalidText = 'Username already in use';
        }
        else {
          this.registerInvalidText = 'Unable to register account'
        }
        this.registerInvalid = true;
      }
    } else {
      this.formSubmitAttempt = true;
    }
  }

  /**
   * Validation on password to ensure they match
   */
  onPasswordInput() {
    if (this.form.hasError('passwordMismatch'))
      this.password2.setErrors([{'passwordMismatch': true}]);
    else
      this.password2.setErrors(null);
  }

  /**
   * Password getters
   */
  get password1() { return this.form.get('password1')!; }
  get password2() { return this.form.get('password2')!; }

}
