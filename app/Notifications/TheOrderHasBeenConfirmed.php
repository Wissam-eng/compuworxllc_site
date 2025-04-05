<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;
use App\Models\Orders;

class TheOrderHasBeenConfirmed extends Notification
{
    use Queueable;
    protected $orderID;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($orderID)
    {
        $this->orderID = $orderID;
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
       $order = Orders::find($this->orderID);
      return (new MailMessage)
        ->subject('Confirmed Order')
        ->line('Your order (ID: ' . $order->id . ') has been confirmed.')
        ->action('Continue Shopping', route('e-commerce.index'))
        ->line('Thank you for choosing us!');
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
