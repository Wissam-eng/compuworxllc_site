<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;
use App\Helpers\Helpers;

class EmailVerificationNotification extends Notification
{
    use Queueable;
    public $otp;

    // protected $message;
    // protected $subject;
    // protected $fromEmail;
    // protected $mailer;
    // private $otp;
    public $email;
    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($otp, $email)
    {
        $this->otp = $otp;
        $this->email = $email;
    }

     /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        return (new MailMessage)
            
            ->subject('Email Verification') // Set subject
            ->line('Your verification code is: ' . $this->otp)
            ->line('This code will expire in 60 seconds.')
            ->action('Verify Email', route('verify.email')); // Set action button
    }
    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}
