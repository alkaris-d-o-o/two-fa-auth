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
                    <h1>{{ __("Let's enjoy!") }}</h1>
                </div>
                <img src="{{ asset('images/two-fa-auth/alkaris-logo-yellow-90deg.png') }}" alt="">
                <!-- <h1 class="company-name">www.alkaris.com</h1> -->

                <div class="not-a-member">
                    <p>
                        {{ __('Not a member yet?') }}
                        <a href="{{ route('auth.register') }}">{{ __('Register now') }}</a>
                    </p>
                </div>
            </div>

            <!-- Form data -->
            <div class="form-data">
                <div class="fd-wrapper">
                    <div class="fd-w-data">
                        <div class="fd-header">
                            <h2>{{ __('Welcome back') }}</h2>
                            <p> {{ __('Enter your credentials and have fun with us. Note, remember to have your mobile phone with you, in case you need for 2FA! ') }} </p>
                        </div>

                        {!! Form::open(array('route' => 'auth.authenticate', 'action' => 'AuthController@authenticate')) !!}
                        @csrf
                            <div class="form-fields">
                                <div class="ff-row">
                                    <div class="ff-col ff-col-6">
                                        <label for="email">{{ __('EMAIL OR USERNAME') }}</label>
                                        {!! Form::text('email', '', ['class' => 'form-input', 'id' => 'email']) !!}
                                        <small>{{ __('Enter your email or username') }}</small>
                                    </div>
                                    <div class="ff-col ff-col-6">
                                        <label for="email">{{ __('PASSWORD') }}</label>
                                        {!! Form::password('password', ['class' => 'form-input', 'id' => 'password']) !!}
                                        <small class="text-danger">{{ __('Your email cannot be empty') }}</small>
                                    </div>
                                </div>
                                <div class="ff-row">
                                    <div class="ff-col ">
                                        {!! Form::checkbox('stay_logged', '', 0, ['class' => 'form-check', 'id' => 'stay_logged']) !!}
                                        <label class="label-auto" for="stay_logged">{{ __('Keep me logged in') }}</label>

                                        <span>|</span>

                                        <a href="#" class="forgot-psw">{{ __('Forgot your password?') }}</a>
                                    </div>
                                </div>

                                <div class="ff-row">
                                    <div class="ff-col d-end">
                                        {!! Form::submit('LOG IN NOW', ['class' => 'form-btn']) !!}
                                    </div>
                                </div>
                            </div>
                        {!! Form::close(); !!}

                        <div class="fd-footer">
                            <p>{{ __('Folow us on') }}</p>
                            <div class="fd-f-btns">
                                <a href="#">
                                    <div class="fd-f-btn-wrapper">
                                        <img src="{{ asset('images/two-fa-auth/facebook-f.svg') }}" alt="">
                                        <p>{{ __('Facebook') }}</p>
                                    </div>
                                </a>
                                <a href="#">
                                    <div class="fd-f-btn-wrapper">
                                        <img src="{{ asset('images/two-fa-auth/youtube.svg') }}" alt="">
                                        <p>{{ __('YouTube') }}</p>
                                    </div>
                                </a>
                                <a href="#">
                                    <div class="fd-f-btn-wrapper">
                                        <img src="{{ asset('images/two-fa-auth/twitter.svg') }}" alt="">
                                        <p>{{ __('Twitter') }}</p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
