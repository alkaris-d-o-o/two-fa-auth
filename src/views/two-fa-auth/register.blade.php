<html>
<head>
    <title>{{ __('Login page') }}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">

    <!-- Fontawesome -->
    <script src="https://kit.fontawesome.com/024a995986.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head>

<body>
<div class="auth-wrapper">
    <div class="aw-img">
        <div class="welcome-header">
            <h1>{{ __("Let's enroll") }}</h1>
        </div>
        <img src="{{ asset('images/two-fa-auth/alkaris-logo-yellow-90deg.png') }}" alt="">
        <!-- <h1 class="company-name">www.alkaris.com</h1> -->

        <div class="not-a-member">
            <p>
                {{ __('Already have account?') }}
                <a href="{{ route('auth') }}">{{ __('Log in now') }}</a>
            </p>
        </div>
    </div>

    <!-- Form data -->
    <div class="form-data">
        <div class="fd-wrapper">
            <div class="fd-w-data">
                <div class="fd-header">
                    <h2>{{ __('Create your account') }}</h2>
                    @if (Session::has('error'))
                        <p class="text-danger">{{ Session::get('error') }}</p>
                    @else
                        <p>{{ __('Enter your credentials and have fun with us. Note, remember to have your mobile phone with you, in case you need for 2FA! ') }}</p>
                    @endif
                </div>

                {!! Form::open(array('route' => 'auth.register-now', 'action' => 'AuthController@registerNow')) !!}
                @csrf
                <div class="form-fields">
                    <div class="ff-row">
                        <div class="ff-col">
                            <label for="name">{{ __('FULL NAME') }}</label>
                            {!! Form::text('name', '', ['class' => 'form-input', 'id' => 'name', 'maxlength' => 100, 'required' => 'required']) !!}
                            @if (Session::has('name')) <small class="text-danger">{{ Session::get('name') }}</small> @else <small>{{ __('Enter your full name - John Doe') }}</small> @endif
                        </div>
                    </div>

                    <div class="ff-row">
                        <div class="ff-col ff-col-6">
                            <label for="email">{{ __('EMAIL ADDRESS') }}</label>
                            {!! Form::text('email', '', ['class' => 'form-input', 'id' => 'email', 'maxlength' => 100, 'required' => 'required']) !!}
                            @if (Session::has('email')) <small class="text-danger">{{ Session::get('email') }}</small> @else <small>{{ __('Enter your email address john@doe.com') }}</small> @endif
                        </div>
                        <div class="ff-col ff-col-6">
                            <label for="email">{{ __('PASSWORD') }}</label>
                            {!! Form::password('password', ['class' => 'form-input', 'id' => 'password', 'maxlength' => 50, 'required' => 'required']) !!}
                            @if (Session::has('password')) <small class="text-danger">{{ Session::get('password') }}</small> @else <small>{{ __('Your email cannot be empty') }}</small> @endif
                        </div>
                    </div>

                    <div class="ff-row">
                        <div class="ff-col">
                            <label for="username">{{ __('USERNAME') }}</label>
                            {!! Form::text('username', '', ['class' => 'form-input', 'id' => 'username', 'maxlength' => 100, 'required' => 'required']) !!}
                            @if (Session::has('username')) <small class="text-danger">{{ Session::get('username') }}</small> @else <small>{{ __('Enter your username') }}</small> @endif
                        </div>
                    </div>

                    <div class="ff-row">
                        <div class="ff-col ff-col-6">
                            <label for="phone">{{ __('PHONE') }}</label>
                            <div class="flex-form-fields">
                                {!! Form::select('prefix', $codes, ['class' => 'form-input', 'id' => 'prefix', 'required' => 'required']) !!}
                                {!! Form::number('phone', '', ['class' => 'form-input', 'id' => 'phone', 'required' => 'required']) !!}
                            </div>
                            @if (Session::has('phone')) <small class="text-danger">{{ Session::get('phone') }}</small> @else <small>{{ __('Enter your phone number') }}</small> @endif
                        </div>
                        <div class="ff-col ff-col-6">
                            <label for="address">{{ __('ADDRESS') }}</label>
                            {!! Form::text('address', '', ['class' => 'form-input', 'id' => 'address', 'maxlength' => 100, 'required' => 'required']) !!}
                            @if (Session::has('address')) <small class="text-danger">{{ Session::get('address') }}</small> @else <small>{{ __('Enter your home address') }}</small> @endif
                        </div>
                    </div>

                    <div class="ff-row">
                        <div class="ff-col ff-col-6">
                            <label for="city">{{ __('CITY') }}</label>
                            {!! Form::text('city', '', ['class' => 'form-input', 'id' => 'city', 'maxlength' => 100, 'required' => 'required']) !!}
                            @if (Session::has('city')) <small class="text-danger">{{ Session::get('city') }}</small> @else <small>{{ __('Enter your city') }}</small> @endif
                        </div>

                        <div class="ff-col ff-col-6">
                            <label for="country">{{ __('Country') }}</label>
                            {!! Form::select('country', $countries, ['class' => 'form-input', 'id' => 'country', 'required' => 'required']) !!}
                            @if (Session::has('country')) <small class="text-danger">{{ Session::get('country') }}</small> @else <small>{{ __('Enter your home address') }}</small> @endif
                        </div>
                    </div>
                    <div class="ff-row">
                        <div class="ff-col">
                            {!! Form::checkbox('terms', '1', 0, ['class' => 'form-check', 'id' => 'terms']) !!}
                            <a href="#" class="agree"> {{ __('I agree with terms and conditions') }} </a>

                            <span>|</span>

                            {!! Form::checkbox('privacy', '1', 0, ['class' => 'form-check', 'id' => 'privacy']) !!}
                            <a href="#" class="agree">{{ __('I agree with privacy policy') }}</a>
                        </div>
                    </div>

                    <div class="ff-row">
                        <div class="ff-col d-end">
                            {!! Form::submit('CREATE ACCOUNT', ['class' => 'form-btn']) !!}
                        </div>
                    </div>
                </div>
                {!! Form::close(); !!}
            </div>
        </div>
    </div>
</div>
</body>
</html>
