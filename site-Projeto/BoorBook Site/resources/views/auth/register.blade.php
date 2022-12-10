@extends('layouts.main')

@section('title', 'Login')

@section('content')
    <x-guest-layout>
        <x-jet-authentication-card>
            <x-slot name="logo">
                <x-jet-authentication-card-logo />
            </x-slot>

            <x-jet-validation-errors class="mb-4" />

            <form method="POST" action="{{ route('register') }}">
                @csrf

                <div>

                    <x-jet-label for="name" value="{{ __('Nome') }}" />
                    <x-jet-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')"
                        required autofocus autocomplete="name" />
                </div>
                <div>
                    <x-jet-label for="city" value="{{ __('Cidade') }}" />
                    <x-jet-input id="city" class="block mt-1 w-full @error('city') is-invalid @enderror" type="text"
                        name="city" :value="old('city')" required autofocus autocomplete="city" />
                    @error('city')
                        <p class="text-danger">{{ $message }}</p>
                    @enderror
                </div>
                <div>
                    <x-jet-label for="cep" value="{{ __('Cep') }}" />
                    <x-jet-input id="cep" class="block mt-1 w-full" type="text" name="cep" :value="old('cep')"
                        required autofocus autocomplete="cep" />
                </div>
                <div>
                    <x-jet-label for="phone" value="{{ __('Telefone') }}" />
                    <x-jet-input id="phone" class="block mt-1 w-full" type="text" name="phone" :value="old('phone')"
                        required autofocus autocomplete="phone" />
                </div>

                <div class="mt-4">
                    <x-jet-label for="email" value="{{ __('Email') }}" />
                    <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')"
                        required />
                </div>


                <div class="mt-4">
                    <x-jet-label for="password" value="{{ __('Password') }}" />
                    <x-jet-input id="password" class="block mt-1 w-full" type="password" name="password" required
                        autocomplete="new-password" />
                </div>

                <div class="mt-4">
                    <x-jet-label for="password_confirmation" value="{{ __('Confirm Password') }}" />
                    <x-jet-input id="password_confirmation" class="block mt-1 w-full" type="password"
                        name="password_confirmation" required autocomplete="new-password" />
                </div>

                @if (Laravel\Jetstream\Jetstream::hasTermsAndPrivacyPolicyFeature())
                    <div class="mt-4">
                        <x-jet-label for="terms">
                            <div class="flex items-center">
                                <x-jet-checkbox name="terms" id="terms" required />

                                <div class="ml-2">
                                    {!! __('I agree to the :terms_of_service and :privacy_policy', [
                                        'terms_of_service' =>
                                            '<a target="_blank" href="' .
                                            route('terms.show') .
                                            '" class="underline text-sm text-gray-600 hover:text-gray-900">' .
                                            __('Terms of Service') .
                                            '</a>',
                                        'privacy_policy' =>
                                            '<a target="_blank" href="' .
                                            route('policy.show') .
                                            '" class="underline text-sm text-gray-600 hover:text-gray-900">' .
                                            __('Privacy Policy') .
                                            '</a>',
                                    ]) !!}
                                </div>
                            </div>
                        </x-jet-label>
                    </div>
                @endif

                <div class="flex items-center justify-end mt-4">
                    <a class="underline text-sm text-gray-600 hover:text-gray-900" href="{{ route('login') }}">
                        {{ __('Já tem registro?') }}
                    </a>

                    <x-jet-button class="ml-4">
                        {{ __('Registrar') }}
                    </x-jet-button>
                </div>
            </form>
        </x-jet-authentication-card>
    </x-guest-layout>
@endsection
