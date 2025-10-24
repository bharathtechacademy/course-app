package com.bharathtechacademy.courseapp;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Initialize views
        Button whatsappBtn = findViewById(R.id.whatsappBtn);
        Button callBtn = findViewById(R.id.callBtn);
        Button emailBtn = findViewById(R.id.emailBtn);
        Button linkedinBtn = findViewById(R.id.linkedinBtn);
        Button websiteBtn = findViewById(R.id.websiteBtn);

        // Set click listeners
        whatsappBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openWhatsApp();
            }
        });

        callBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                makeCall();
            }
        });

        emailBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                sendEmail();
            }
        });

        linkedinBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openLinkedIn();
            }
        });

        websiteBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openWebsite();
            }
        });
    }

    private void openWhatsApp() {
        String phoneNumber = "919553220022";
        String message = "Hi! I'm interested in the Full Stack Software Testing course.";
        String url = "https://wa.me/" + phoneNumber + "?text=" + Uri.encode(message);
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(url));
        startActivity(intent);
    }

    private void makeCall() {
        Intent intent = new Intent(Intent.ACTION_DIAL);
        intent.setData(Uri.parse("tel:+919553220022"));
        startActivity(intent);
    }

    private void sendEmail() {
        Intent intent = new Intent(Intent.ACTION_SENDTO);
        intent.setData(Uri.parse("mailto:BharathTechAcademy@gmail.com"));
        intent.putExtra(Intent.EXTRA_SUBJECT, "Inquiry about Full Stack Software Testing Course");
        intent.putExtra(Intent.EXTRA_TEXT, "Hi Bharath,\n\nI'm interested in learning more about your Full Stack Software Testing course.\n\nBest regards,");
        startActivity(Intent.createChooser(intent, "Send Email"));
    }

    private void openLinkedIn() {
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse("https://www.linkedin.com/in/BharathReddyK"));
        startActivity(intent);
    }

    private void openWebsite() {
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse("https://www.BharathTechAcademy.com"));
        startActivity(intent);
    }
}
