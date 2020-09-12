


#import <Foundation/Foundation.h>
#import <stdio.h>
#import <stdlib.h>
#import <sys/socket.h>
#import <sys/types.h>
#import <string.h>
#import <arpa/inet.h>   /* inet(3) functions */
#import <errno.h>
#import <unistd.h>
#import <sys/time.h>
#import <netdb.h>
#import <netinet/in.h>
#import <time.h>

NS_ASSUME_NONNULL_BEGIN
@interface parser : NSObject


//properties:
@property int sockfd;
@property float gps_Lat;
@property float gps_Long;
@property int ground_speed;
@property short int gps_VSI;
@property int gps_heading;
//@property int gps_Altitude;
@property int geo_Altitude;
@property int mslAltitude;
@property int16_t altitudeVariation; //signed 16 bit
@property float firmware_version;
@property int battPct;
@property float roll;
@property float pitch;
@property float yaw;//yaw = Heading
@property int airspeedKnots;
@property int altitudeFeet;
@property int vsiFtPerMin;
@property uint8_t msgForMicrocontroller; //for normal simulation msgs
@property NSData * emergencyFlipUp; //for emergency visor flip up
//@property NSString * emgMsgBytes;
@property NSString * manualNormalMsgBytes;
@property NSString * manualEmgMsgBytes;
@property NSString * systemTestBytes;
@property bool errorInReceiving;


//methods:

-(void) packetParser:(uint8_t *)preCleanedMessage withSize:(ssize_t) n;
-(void) msgReceiver;
-(void) msgSender;
-(void) normalMsgSender: (NSString *) simulationMsgBytes ofSize:(uint8_t)numberOfBytes;
-(void) scanData: (uint8_t *) RxData_1 ofLength:(uint8_t) BufferLength;
-(unsigned short) gdl90_CRC_Compute: (uint8_t *) data ofLength: (unsigned long)length;
//-(void) emergencyMsgSender:(NSString *) emgMsgBytes;
-(void) emergencyMsgSender:(NSString *) emgMsgBytes ofSize:(uint8_t) noOfBytes;
-(void) closeUDPsocket;


@end

NS_ASSUME_NONNULL_END
