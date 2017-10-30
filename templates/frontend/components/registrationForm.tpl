{**
 * templates/frontend/components/registrationForm.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University Library
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the basic registration form fields
 *
 * @uses $locale string Locale key to use in the affiliate field
 * @uses $firstName string First name input entry if available
 * @uses $middleName string Middle name input entry if available
 * @uses $lastName string Last name input entry if available
 * @uses $countries array List of country options
 * @uses $country string The selected country if available
 * @uses $email string Email input entry if available
 * @uses $username string Username input entry if available
 *}



<fieldset class="identity">
	<!--<legend>-->
		{*translate key="user.profile"*}
	<!--</legend>-->
	<div class="fields">
		<div class="form-group my-form-group first_name">
			<label>
				
				<input class="form-control" type="text" name="firstName" id="firstName" value="{$firstName|escape}" maxlength="40" required placeholder="{translate key="user.firstName"}">
			</label>
		</div>
		<div class="form-group my-form-group middle_name">
			<label>
				
				<input class="form-control" type="text" name="middleName" value="{$middleName|escape}" maxlength="40" placeholder="{translate key="user.middleName"}">
			</label>
		</div>
		<div class="form-group my-form-group last_name">
			<label>
				
				<input class="form-control" type="text" name="lastName" id="lastName" value="{$lastName|escape}" maxlength="40" required placeholder="{translate key="user.lastName"}">
			</label>
		</div>
		<div class="form-group my-form-group affiliation">
			<label>
				
				<input class="form-control" type="text" name="affiliation[{$primaryLocale|escape}]" id="affiliation" value="{$affiliation.$primaryLocale|escape}" required placeholder="{translate key="user.affiliation"}">
			</label>
		</div>
		<div class="form-group my-form-group country">
			<label>
				{translate key="common.country"}
				<select class="form-control" name="country" id="country" required>
					<option></option>
					{html_options options=$countries selected=$country}
				</select>
			</label>
		</div>
	</div>
</fieldset>

<fieldset class="">

	<div class="fields">
    <!--<legend>-->
  		{*translate key="user.login"*}
  	<!--</legend>-->
		<div class="form-group my-form-group email">
			<label>
				
				<input class="form-control" type="text" name="email" id="email" value="{$email|escape}" maxlength="90" required placeholder="{translate key="user.email"}">
			</label>
		</div>
		<div class="form-group my-form-group username">
			<label>
				
				<input class="form-control" type="text" name="username" id="username" value="{$username|escape}" maxlength="32" required placeholder="{translate key="user.username"}">
			</label>
		</div>
		<div class="form-group my-form-group password">
			<label>
				
				<input class="form-control" type="password" name="password" id="password" password="true" maxlength="32" required placeholder="{translate key="user.password"}">
			</label>
		</div>
		<div class="form-group my-form-group password">
			<label>
				
				<input class="form-control" type="password" name="password2" id="password2" password="true" maxlength="32" required placeholder="{translate key="user.repeatPassword"}">
			</label>
		</div>
	</div>
</fieldset>